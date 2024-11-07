import json
from flask import Flask, jsonify, request, abort
from subprocess import call
from random import choice
from string import ascii_lowercase, digits
import cert_issuer.config
from cert_issuer.blockchain_handlers import ethereum
import cert_issuer.issue_certificates
from flask_pymongo import PyMongo
from schemas import UnverifiedBirthCertSchema
from utils import get_unverified_cert
from flask_cors import CORS
from flask_jwt import JWT, jwt_required, current_identity
from werkzeug.security import safe_str_cmp

class User(object):
    def __init__(self, id, username, password):
        self.id = id
        self.username = username
        self.password = password

    def __str__(self):
        return "User(id='%s')" % self.id

users = [
    User(1, 'user1', 'abcxyz'),
    User(2, 'user2', 'abcxyz'),
]

username_table = {u.username: u for u in users}
userid_table = {u.id: u for u in users}

def authenticate(username, password):
    user = username_table.get(username, None)
    if user and safe_str_cmp(user.password.encode('utf-8'), password.encode('utf-8')):
        return user

def identity(payload):
    user_id = payload['identity']
    return userid_table.get(user_id, None)

app = Flask(__name__)
app.config["MONGO_URI"] = "mongodb://user:password@localhost:27017/HexSpeak"
app.debug = True
app.config['SECRET_KEY'] = 'super-secret'

mongo = PyMongo(app)
jwt = JWT(app, authenticate, identity)
CORS(app)

config = None
generated_id = None

def get_config():
    global config
    if config == None:
        config = cert_issuer.config.get_config()
    return config

class CertHandler:
    @staticmethod
    def add_proof(meta, proof):
        generated_uid = "".join([choice(ascii_lowercase + digits) for i in range(10)])
        mongo.db.verifiedCerts.insert({"uid": generated_uid, "certbody": open(meta.final_blockchain_cert_file_name).read()})
        global generated_id
        generated_id = generated_uid


@app.route('/create-unverfied-certificate/<string:isauthed>', methods=['POST'])
def create_unverified(isauthed):
    """
    {
        "cert_type": "birth",
        "data": {
            # See schemas UnverifiedBirthCertSchema/UnverifiedDeathCertSchem
        }
    }
    Creates an unverified certificate and returns an id corresponding to that
    """
    data = request.json
    if isauthed == 'authed':
        if not 'cert_type' in data.keys():
            return jsonify({'error': 'bad request cert_type missing'}), 400
        if not 'data' in data.keys():
            return jsonify({'error': 'bad request data missing'}), 400

        if data.get('cert_type') == 'birth':
            birth_schema = UnverifiedBirthCertSchema()
            birth_data = birth_schema.load(data.get('data'))
            cert_type='birth'
            tabular_data = birth_data
        elif data.get('cert_type') == 'death':
            death_schema = UnverifiedDeathCertSchema()
            death_data = death_schema.load(data.get('data'))
            cert_type='death'
            tabular_data = birth_data
    elif isauthed == 'unauthed':
        unverified_cert = get_unverified_cert('death', )

@app.route('/create-certificate', methods=['POST'])
def issue():
    """
    Issue a certificate based on unverified certificate id and name
    """
    data = request.json
    
    config = get_config()
    certificate_batch_handler, transaction_handler, connector=ethereum.instantiate_blockchain_handlers(config)
    certificate_batch_handler.set_certificates_in_batch(request.json)
    tx_id = cert_issuer.issue_certificates.issue(config, certificate_batch_handler, transaction_handler)
    certificate_batch_handler.certificate_handler = CertHandler()
    certificate_batch_handler.finish_batch(tx_id, config.chain)
    return jsonify(json.dumps({'uid': generated_id})), 201

@app.route('/users')
@jwt_required()
def users_table():
    print(current_identity)
    return jsonify(['x', 'y'])

if __name__ == '__main__':
    app.run(host='0.0.0.0')
