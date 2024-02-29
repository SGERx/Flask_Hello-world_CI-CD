#!/bin/bash

python -m pip install --upgrade pip
pip install -r requirements.txt

flake8 .

python -m unittest discover tests

sleep 10

curl -X POST http://127.0.0.1:5000/shutdown

# pkill -f "python app.py"
