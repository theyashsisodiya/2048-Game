# Use an official lightweight Alpine Linux as the base image
FROM nginx:alpine

# Copy the 2048 game files to the NGINX HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP access
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
