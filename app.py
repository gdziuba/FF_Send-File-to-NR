from flask import Flask, render_template, request, jsonify
import requests

app = Flask(__name__)

def send_file(api_url, file):
    files = {'file': (file.filename, file, 'multipart/form-data')}
    response = requests.post(api_url, files=files)
    return response

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        endpoint = request.form['endpoint']
        file = request.files['file']
        response = send_file(endpoint, file)
        return jsonify(status_code=response.status_code, text=response.text)
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
