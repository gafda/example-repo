#!/bin/bash

# Path to the docker-compose file
COMPOSE_FILE=".docker/docker-compose.yaml"

# Check if docker-compose file exists
if [ ! -f "$COMPOSE_FILE" ]; then
    echo "docker-compose.yaml file not found!"
    exit 1
fi

# Extract all image names from the docker-compose file
IMAGES=$(grep 'image:' $COMPOSE_FILE | awk '{print $2}')

# Pull each image
for IMAGE in $IMAGES; do
    echo "Pulling image: $IMAGE"
    docker pull $IMAGE
done

echo "All images pulled successfully."
