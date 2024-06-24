# Use Nginx to serve the build files
FROM nginx:alpine

# Copy the build output to Nginx's web directory
COPY build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
