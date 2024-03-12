# Use a base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /game/index

# Copy all files from the current directory to the working directory inside the container
COPY . .

# Expose port 80 to allow access to the Nginx web server
EXPOSE 8888
