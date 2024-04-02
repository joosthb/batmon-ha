#!/usr/bin/with-contenv bashio

. /app/venv/bin/activate

python install_bleak.py
python3 main.py