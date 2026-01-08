#!/usr/bin/env bash
set -e

STACK_NAME="outline"

echo "Deploying stack: $STACK_NAME"
docker stack deploy -c outline-swarm.yml "$STACK_NAME"

echo "Services:"
docker service ls | grep "$STACK_NAME" || true
