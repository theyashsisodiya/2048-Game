# Use a lightweight base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy all project files to the working directory inside the container
COPY . .

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Expose port 8888 to allow access to the HTTP server
EXPOSE 8888

# Command to start the HTTP server serving your project files
CMD ["python", "-m", "http.server", "8888"]
