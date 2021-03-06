#!/bin/bash

pip install -r requirements.txt -i https://pypi.python.org/simple/
./setup.py build_pbf
honcho run ./manage.py db upgrade
exec honcho run ./manage.py runserver --host 0.0.0.0 --port 80