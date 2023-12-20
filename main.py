from flask import Flask


app = Flask(__name__)


@app.route("/")
def index():
    return '<h1>Hello from flask app</h1>'


@app.route("/test")
def test():
    return '<h1>Hellow from flask from def test</h1>'


if __name__ == "__main__":
    app.run(debug=True)