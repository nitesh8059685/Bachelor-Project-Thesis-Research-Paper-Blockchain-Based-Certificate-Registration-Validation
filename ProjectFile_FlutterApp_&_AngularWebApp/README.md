
Flow Final -

Hospital logs in the dashboard with prefixed id/ Password
In Mongo we have collection -
verifiers-
{
    "type": "hospital"/ "mco",
    "id": "xyzabcd"
    "stamp_png": "b64ofstamp",
    "password": "password",
    "cert_auth_title": "XYZ Hospital"
}

@Angular-

"xyzabcd"
"password"

Page Opens with a Form

class Address(Schema):
    state = fields.Str()
    district = fields.Str()
    stree = fields.Str()
    house = fields.Str()
    pincode = fields.Str()


sex = fields.Str()
dob = fields.Str()
time = fields.Str()
placeofbirth = fields.Str()
date_of_registration = fields.Str()
mothersname = fields.Str()
fathersname = fields.Str()
mothersid = fields.Str()
fathersid = fields.Str()
PrimaryMobileNumber = fields.Str()
address = fields.Nested(Address, unknown=EXCLUDE)

We enter these details in Angular and send it @ localhost:8000/create-unverfied-certificate/authed

@backend
from session pick up id
from id pick up verifiers info
from request.json pick up this info

call utils.get_unverified_cert()

create an ID and store it corresponding to that in mongodb.unverifiedCerts, set status = verified
return the ID to hospital and send sms at localhost:4444/?num=the posted mobile number&body=the unverified id is xyz


@Flutter-
open app
insert this id
it will be preverified

enter name and id send it @ localhost:8000/create-certificate/self

@backend
from mongodb.unverifiedCerts pick up cert where id = the id received
give the json in ertificate_batch_handler.set_certificates_in_batch()
save it in db corresponding to a new UID
return this UID to the flutter
and send it as a sms at localhost:4444/?num=the posted mobiel number&body=the verified id is abc

@Flutter-
unverified-self

class Address(Schema):
    state = fields.Str()
    district = fields.Str()
    stree = fields.Str()
    house = fields.Str()
    pincode = fields.Str()


sex = fields.Str()
dob = fields.Str()
time = fields.Str()
placeofbirth = fields.Str()
date_of_registration = fields.Str()
mothersname = fields.Str()
fathersname = fields.Str()
mothersid = fields.Str()
fathersid = fields.Str()
PrimaryMobileNumber = fields.Str()
address = fields.Nested(Address, unknown=EXCLUDE)

We enter these details in Angular and send it @ localhost:8000/create-unverfied-certificate/unauthed
as there is no id so pick up the default cert auth
which will have default infos

create an ID and store it corresponding to that in mongodb.unverifiedCerts, set status = verified
return the ID to hospital and send sms at localhost:4444/?num=the posted mobile number&body=the unverified id is xyz
Also send an OTP
The verifier will come collect fee and verify using that OTP
Instead of the person MCO sends the request @ localhost:8000/create-certificate/mco

if mco then take id and collect info and substitute in template from utils and give it directly to 
give the json in certificate_batch_handler.set_certificates_in_batch()

----------------------------- base functionality completed with blockchain --------------------------------------
