#!/bin/bash

# Variables
SERVER_USER="your_server_user"
SERVER_HOST="your_server_host"
REPO_URL="your_repo_url"
APP_DIR="your_app_directory"
DOCKER_IMAGE_NAME="your_docker_image_name"
DOCKER_CONTAINER_NAME="your_docker_container_name"
SSH_KEY_PATH="path_to_your_ssh_key"

# SSH into the server and run deployment commands
ssh -i $SSH_KEY_PATH $SERVER_USER@$SERVER_HOST << 'EOF'

# Navigate to the application directory
cd $APP_DIR

# Pull the latest code from the repository
git pull $REPO_URL

# Build the Docker image
docker build -t $DOCKER_IMAGE_NAME .

# Stop and remove the existing container if it exists
if [ $(docker ps -q -f name=$DOCKER_CONTAINER_NAME) ]; then
    docker stop $DOCKER_CONTAINER_NAME
    docker rm $DOCKER_CONTAINER_NAME
fi

# Run the new Docker container
docker run -d --name $DOCKER_CONTAINER_NAME -p 80:80 $DOCKER_IMAGE_NAME

EOF

echo "Deployment completed successfully."
