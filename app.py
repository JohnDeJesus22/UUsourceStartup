from flask import Flask, render_template, url_for, request, flash
from forms import ContactForm

app = Flask(__name__)

app.secret_key = 'dummy key'

# home page
@app.route('/')
def home():
    return render_template('home.html')


# sample page
@app.route('/Samples')
def sample_page():
    return render_template('sample_page.html')


# contact page
@app.route('/contact', methods=['GET', 'POST'])
def contact_page():
    form = ContactForm()

    if request.method == 'POST':
        if form.validate() is False:
            flash('Please fill out all Fields to send message')
            return render_template('contact.html', form=form)
        else:
            return 'Form Posted.'

    elif request.method == 'GET':
        return render_template('contact.html', form=form)


# meet the team page
@app.route('/about')
def about_page():
    return render_template('about.html')


if __name__ == '__main__':
    app.run()