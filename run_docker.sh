#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
# Repo tuanpa95/udacity-ml-api:tagname
# Step 1:
# Build image and add a descriptive tag
docker build --tag=udacity-ml-api .

# Step 2:
# List docker images
docker image ls

# Step 3:
# Run flask app
docker run -p 8080:80 udacity-ml-api
