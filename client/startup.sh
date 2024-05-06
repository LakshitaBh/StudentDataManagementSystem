#!/bin/bash

cd /usr/src/app

# Start Envoy
envoy --config-path ./src/envoy.yaml &

# Start the application
npm start