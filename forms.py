from flask_wtf import FlaskForm
from wtforms import StringField, TextAreaField, SubmitField
from wtforms.validators import DataRequired, Length, Email


class ContactForm(FlaskForm):
    name = StringField('Name', validators=[DataRequired('Please enter your name'), Length(min=2)])
    email = StringField('Email', validators=[DataRequired('Please enter your email address'), Email()])
    subject = StringField('Subject', validators=[DataRequired('Please enter a subject')])
    message = TextAreaField('Message', validators=[DataRequired('Please enter a message'), Length(min=2)])
    submit = SubmitField('Send Email')