# Base image
FROM nginx:latest

# Copy all project files into the container
COPY . /usr/share/nginx/html

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
