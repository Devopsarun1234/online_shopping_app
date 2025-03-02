#!/bin/bash
set -e

CONTAINER_NAME="online-shop-app"

echo "Stopping existing container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true
