#!/bin/bash

cd /path/to/deploy

python3 -m venv venv
source venv/bin/activate

pip install -r requirements.txt

pkill -f "uvicorn"
nohup uvicorn main:app --host 0.0.0.0 --port 8000 &
