# Use an official Nginx image as the base image
FROM nginx:latest

# Copy your local Nginx configuration file to the container
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Expose the port Nginx is listening on
EXPOSE 80

# Launch NGINX
CMD [ "nginx", "-g", "daemon off;" ]