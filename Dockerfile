# Base image
FROM nginx:latest

# Copy HTML file to Nginx default folder
COPY app /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
