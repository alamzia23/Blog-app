# Use a lightweight server image to serve static files
FROM nginx:alpine

# Copy the frontend files to the nginx server
COPY public /usr/share/nginx/html/public
COPY views /usr/share/nginx/html/views

# Copy the Nginx configuration file (if you have a custom one)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port Nginx will listen on
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
