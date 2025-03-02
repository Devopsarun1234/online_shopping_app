 #!/bin/bash
set -e  # Exit immediately if any command fails

CONTAINER_NAME="online-shop-app"

echo "Pulling the latest Docker image..."
docker pull trainwithshubham/tws-online-shop-app-demo:latest

# Stop and remove existing container (if running)
echo "Stopping existing container (if any)..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

# Run the new container
echo "Starting new container..."
docker run -d --name $CONTAINER_NAME -p 5173:5173 trainwithshubham/tws-online-shop-app-demo:latest

