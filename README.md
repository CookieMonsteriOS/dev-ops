# dev-ops

Refresher on Dev Ops 

# React Application Deployment with Docker and CI Pipeline

This repository contains a React application that is deployed using Docker through a CI pipeline. The deployment process is automated with a shell script and a CI configuration using GitHub Actions.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Deployment](#deployment)
- [Directory Structure](#directory-structure)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have a Linux/macOS machine.
- You have SSH access to your server.
- Docker is installed on your server.
- You have a GitHub account and repository set up for your project.

## Setup

### 1. Clone the Repository

```sh
git clone https://github.com/your_username/your_repository.git 
cd dev_ops
```
### 2. Configure SSH Access
Ensure that your SSH key is added to your SSH agent and the public key is added to your server.

### 3. Create Deployment Script
Use file deploy.sh

### 4.Configure GitHub Actions
Create a GitHub Actions workflow file at .github/workflows/deploy.yml with the following content:

### 5. Add Secrets to GitHub
Go to your GitHub repository settings and add the following secrets:

- SERVER_USER
- SERVER_HOST
- REPO_URL
- APP_DIR
- DOCKER_IMAGE_NAME
- DOCKER_CONTAINER_NAME
- SSH_KEY_PATH

### Deployment
To deploy your React application:

Push your code to the main branch of your GitHub repository.
GitHub Actions will automatically run the deployment script and deploy your application to the server.

your_repository/
├── .github/
│ └── workflows/
│ └── deploy.yml
├── src/
│ └── ...
├── public/
│ └── ...
├── Dockerfile
├── deploy.sh
├── package.json
└── README.md

### Contributing
If you want to contribute to this project, please create a pull request or raise an issue.

### License
This project is licensed under the MIT License.
