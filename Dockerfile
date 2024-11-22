# Use the official NGINX image as the base image
FROM nginx:alpine

# Remove the default NGINX website files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into the NGINX web root
COPY . /usr/share/nginx/html

# Expose port 80 to serve the website
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]