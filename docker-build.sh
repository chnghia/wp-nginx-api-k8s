#!/usr/bin/env bash

export PROJECT_ID="$(gcloud config get-value project -q)"

docker build -t gcr.io/${PROJECT_ID}/your-wp:v1 .

gcloud docker -- push gcr.io/${PROJECT_ID}/your-wp:v1