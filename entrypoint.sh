#!/bin/bash

python -m pip install --upgrade pip
pip install -r requirements.txt

flake8 .

python -m unittest discover tests

sleep 10

pkill -f "python app.py"
