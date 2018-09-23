from flask_wtf import FlaskForm, TextField, TextAreaField, SubmitField, validators, ValidationError

class ContactForm(FlaskForm):
    name = TextField('Name',[validators.Required('Please enter your name')])
    email = TextField('Email')
    subject = TextField('Subject')
    message = TextAreaField('Message')
    submit = SubmitField('Send Email')