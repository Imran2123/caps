from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "message": "Hello from Flask app running in Docker!"
    })

if _name_ == '_main_':
    app.run(host='0.0.0.0', port=5000)
