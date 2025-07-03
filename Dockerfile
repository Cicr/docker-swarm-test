# Use the official Nginx base image
FROM nginx:latest

# Remove the default Nginx index.html
RUN rm /etc/nginx/html/index.html

# Copy our custom index.html into the Nginx web root
COPY index.html /etc/nginx/html/

# Expose port 80 (Nginx's default port)
EXPOSE 80

# Command to run Nginx (default for Nginx image)
CMD ["nginx", "-g", "daemon off;"]
