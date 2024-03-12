# Use a lightweight base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy all project files to the working directory inside the container
COPY . .

# Create a custom Nginx configuration file to serve the project files
RUN echo 'server {\
        listen 8888;\
        root /usr/src/app;\
        index index.html;\
        location / {\
            try_files $uri $uri/ =404;\
        }\
    }' > /etc/nginx/conf.d/custom.conf

# Remove the default Nginx configuration if it exists
RUN rm -f /etc/nginx/conf.d/default.conf

# Expose port 8888 to allow access to the HTTP server
EXPOSE 8888

# Command to start the HTTP server serving your project files
CMD ["python", "-m", "http.server", "8888"]
