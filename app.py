from flask import Flask, render_template

app = Flask(__name__)


# home page
@app.route('/')
def home():
    return render_template('home.html')


# sample page
@app.route('/Samples')
def sample_page():
    return render_template('sample_page.html')


# contact page
@app.route('/contact')
def contact_page():
    return render_template('contact.html')


if __name__ == '__main__':
    app.run()