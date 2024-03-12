# Use a base image that includes Nginx web server
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all game files from the current directory to the working directory inside the container
COPY . .

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration to serve the application files
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 8888 to allow access to the web server
EXPOSE 8888

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
