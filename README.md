---
# 2048 Game Dockerized

This repository contains a Dockerized version of the popular 2048 Game.

## Getting Started

To start playing the 2048 Game, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone <repository_url>
   ```

2. **Navigate to the Directory:**
   ```bash
   cd 2048-Game
   ```

3. **Build the Docker Image:**
   ```bash
   docker build -t 2048-game .
   ```

4. **Run the Docker Container:**
   ```bash
   docker run -d -p 8000:80 2048-game
   ```

5. **Access the Game:**
   Open your web browser and go to [http://localhost:8888](http://localhost:8888) to start playing the game.

## Dockerfile

Here's the Dockerfile used to build the Docker image:

```Dockerfile
# Use a base image that includes Nginx web server
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all game files from the current directory to the working directory inside the container
COPY . .

# Expose port 8000 to allow access to the web server
EXPOSE 8000

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
```

## Jenkins Configuration Script

```bash
#!/bin/bash

# Path
echo "Current working directory:"
pwd

# Stop and remove the old container if it exists
echo "Stopping and removing old container..."
sudo docker stop 2048-game-container
sudo docker rm 2048-game-container

# Build the Docker image
echo "Building Docker image..."
sudo docker build -t 2048-game .

# Run the Docker container
echo "Starting the new container..."
sudo docker run -d -p 8888:80 --name 2048-game-container 2048-game
```

## Additional Information

- The Dockerfile sets up an Nginx server to serve the 2048 game.
- Port 8000 on your local machine is mapped to port 80 inside the Docker container for accessing the game.
- You can customize the game or server configuration by modifying the files in this repository and rebuilding the Docker image.

Enjoy playing 2048!

---

Replace `<repository_url>` with the URL of your Git repository..
