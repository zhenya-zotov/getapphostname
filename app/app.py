from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def host_name():
    return f"<p>Hello, I'm {os.uname()[1]}</p>"


if __name__ == "__main__":
    app.run(debug=True)