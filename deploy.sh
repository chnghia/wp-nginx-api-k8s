#!/usr/bin/env bash

# Step 1: Create a Kubernetes Engine cluster
gcloud container clusters create -cluster-1 --num-nodes=1

gcloud compute disks create --size 5GB wp-disk

# Step 3: Set up MySQL
kubectl create secret generic mysql --from-literal=password=verysecurepassword

# Step 4: Set up WordPress
kubectl create -f scripts/wp-config.yml
kubectl create -f scripts/wp-deploy.yml
kubectl create -f scripts/wp-service.yml