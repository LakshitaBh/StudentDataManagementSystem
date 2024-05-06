#!/bin/bash

gsutil cp gs://eduhub-sand-bkt/.env .

python ./src/server.py