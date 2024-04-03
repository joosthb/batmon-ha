#!/usr/bin/env sh

. /app/venv/bin/activate

python install_bleak.py
python3 main.py