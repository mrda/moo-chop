from flask import Flask
from random import randint

app = Flask(__name__)


@app.route('/')
def hello_world():
    cols = (randint(1, 255), randint(1, 255), randint(1, 255))
    colour_css = "color: rgb({},{},{})".format(*cols)
    return ("<style type='text/css'> h1 {" +
            colour_css +
            "}</style><h1>Hello, World!</h1>")
