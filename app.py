from flask import Flask, render_template
from flask_frozen import Freezer
import os

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('about.html')

# Initialize Freezer
freezer = Freezer(app)

if __name__ == '__main__':
    freezer.freeze()  # This will generate static files