#!/usr/bin/env python3

'''Sometimes you just need to have a remote subprocess runner'''

from flask import Flask, render_template, jsonify, request
import subprocess
from werkzeug.utils import secure_filename

app = Flask(__name__)

@app.route("/process")
def home():
  ifname = request.args.get('ifname', type=str)
  thecmd = "python3 Ps.py " + ifname
  #return subprocess.check_output(thecmd, shell=True)
  return subprocess.check_output("python3 Ps.py chr23_matrix.txt", shell=True)


@app.route('/form')
def form():
    return render_template('form.html')

@app.route('/upload', methods = ['POST', 'GET'])
def upload():
    if request.method == 'POST':
        f = request.files['file']
        f.save("iffiles//"+secure_filename(f.filename))
        return "File saved successfully"


if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)
