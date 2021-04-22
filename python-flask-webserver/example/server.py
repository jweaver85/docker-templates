import flask
from flask import request

app = flask.Flask(__name__)
app.config["DEBUG"] = True


@app.route('/', methods=['GET'])
def home():
    return "<h1>Python-Flask API</h1><p>This site is a simple prototype API for demonstration purposes.</p>"


@app.route('/hello-world', methods=['GET'])
def hello_world():
    return "Hello World!"


@app.route('/hello', methods=['GET'])
def hello():
    if "name" in request.args:
        return "Hello " + request.args["name"] + "!"
    else:
        return "Hello!"


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
