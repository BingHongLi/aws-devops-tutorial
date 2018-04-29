"""
flask 第一版
"""

from flask import Flask, request, abort
app = Flask(__name__)

@app.route('/',methods=['GET'])
def hello_world():
    abort(404)

if __name__ == "__main__":
    app.run(host='0.0.0.0',port=5000)
