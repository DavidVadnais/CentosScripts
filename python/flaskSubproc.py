#!/usr/bin/env python3

'''Sometimes you just need to have a remote subprocess runner'''

from flask import Flask, render_template, jsonify
import subprocess

app = Flask(__name__)

@app.route("/")
def home():
  return subprocess.check_output("python3 ${FILE}.py", shell=True)

if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)
