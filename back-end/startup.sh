#!/bin/bash

# Change directory to /usr/src/app
cd /usr/src/app

# Copy .env file from Cloud Storage to the current directory
gsutil cp gs://eduhub-sand-bkt/.env .

# Run your Python script
python ./src/server.py

logger "Backend server started successfully."