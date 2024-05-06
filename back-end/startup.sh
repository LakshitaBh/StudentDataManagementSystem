#!/bin/bash

# Change directory to /usr/src/app
cd /usr/src/app

# Copy .env file from Cloud Storage to the current directory
gsutil cp gs://eduhub-sand-bkt/.env .

ls -al

echo "Starting backend server..."

# Run your Python script
# exec python ./src/server.py >>/dev/stdout 
