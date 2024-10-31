# Installation Instructions

## Install Docker Engine Locally

To run this application, you need to have Docker Engine installed on your local machine. Please follow the official Docker installation guide for your operating system:

- [Docker Engine Installation Guide](https://docs.docker.com/engine/install/)

# Using Docker to Build and Run the Application

## Building the Application with Dockerfile

To build the application using the Dockerfile, follow these steps:

1. Open a terminal and navigate to the root directory of the project.

2. Build the Docker image using the Dockerfile located in the `.docker` directory:

    ```bash
    docker build -f ./.docker/Dockerfile -t your-image-name:tag .
    ```

    Replace `your-image-name` with a name for your Docker image.

## Running the Application Locally with Docker Compose

To run the application locally using Docker Compose, follow these steps:

1. Ensure you are in the root directory of the project.

2. Start the application with Docker Compose using the `docker-compose.yml` file from the `.docker` directory:

    ```bash
    docker-compose -f ./.docker/docker-compose.yml up -d
    ```

3. To stop the application, press `Ctrl+C` in the terminal or run:

    ```bash
    docker-compose -f ./.docker/docker-compose.yml down
    ```
