from flask import Flask, request

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello, World!'


def shutdown_server():
    func = request.environ.get('werkzeug.server.shutdown')
    if func is not None:
        func()


@app.route('/shutdown', methods=['POST'])
def shutdown():
    shutdown_server()
    return 'Server shutting down...'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
