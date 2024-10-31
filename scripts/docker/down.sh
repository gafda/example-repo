#!/bin/bash
echo "GOING DOWN ... .. ."

# Stopping...
docker compose --profile ollama --profile mongoui -f ./.docker/docker-compose.yaml down --remove-orphans --rmi local
