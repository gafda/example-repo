#!/bin/bash
echo "GOING UP ! ... .. ."

# Profiles argument parsing
profiles=""
if [ "$#" -gt 0 ]; then
    for profile in "$@"; do
        profiles="$profiles --profile $profile"
    done
fi

docker compose $profiles -f ./.docker/docker-compose.yaml up -d --build
