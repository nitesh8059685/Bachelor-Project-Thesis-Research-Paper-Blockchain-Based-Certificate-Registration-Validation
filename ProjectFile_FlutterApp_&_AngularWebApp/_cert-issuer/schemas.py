from marshmallow import Schema, fields


class Address(Schema):
    state = fields.Str()
    district = fields.Str()
    stree = fields.Str()
    house = fields.Str()
    pincode = fields.Str()

class UnverifiedBirthCertSchema(Schema):
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
    address = fields.Nested(Address)


class UnverifiedDeathCertSchema(Schema):
    death_location = fields.Nested(Address)
    death_time = fields.Str()
    name = fields.Str()
    sex = fields.Str()
    age = fields.Str()
    reason_of_death = fields.Str()
    identity_proof = fields.Str()

