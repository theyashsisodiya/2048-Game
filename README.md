The README.md file has been updated with the Dockerfile placed after the "Getting Started" section. Here's the improved version:

---

# 2048 Game Dockerized

This repository contains the Dockerized version of the 2048 Game.

## Getting Started

To get started with this project, follow these steps:

1. Clone this repository:
   ```bash
   git clone <repository_url>
   ```

2. Navigate to the cloned directory:
   ```bash
   cd 2048-Game
   ```

3. **Dockerfile**

```Dockerfile
# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all files from the current directory to the working directory inside the container
COPY . .

# Expose port 80 to allow access to the Nginx web server
EXPOSE 80
```
 

4. Build the Docker image:
   ```bash
   sudo docker build -t game-2048 .
   ```

5. Run a Docker container using the built image:
   ```bash
   sudo docker run -d -p 8080:80 game-2048
   ```

6. Access the game in your web browser using the following link:



## Additional Information

- The Dockerfile in this repository is configured to set up an Nginx server to serve the 2048 game.
- Port 8080 on your local machine is mapped to port 80 inside the Docker container to access the game.
- You can customize the game or server configuration by modifying the files in this repository and rebuilding the Docker image.

Enjoy playing 2048!

---

Replace `<repository_url>` with the URL of your Git repository.

This README.md provides users with clear instructions on how to clone the repository, build the Docker image, run the Docker container, and access the game. It also includes the Dockerfile used in the project for reference.
