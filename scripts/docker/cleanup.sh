#!/bin/bash
echo "CLEANING UP IMAGES ! ... .. ."

# Starting...
docker compose -f ./docker-compose.yaml down --rmi all
