from flask import Flask, render_template, url_for
from forms import ContactForm

app = Flask(__name__)

# home page
@app.route('/')
def home():
    return render_template('test.html')


# sample page
@app.route('/Samples')
def sample_page():
    return render_template('sample_page.html')


# contact page
@app.route('/contact')
def contact_page():
    form = ContactForm()
    return render_template('contact.html',form = form)


@app.route('/about')
def about_page():
    return render_template('about.html')

if __name__ == '__main__':
    app.run()