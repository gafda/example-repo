# Use the official Nginx image from the Docker Hub
FROM nginx:alpine3.20-slim

# Create a non-root user and group
RUN addgroup -S nginxgroup && adduser -S nginxuser -G nginxgroup

# Copy the static HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Change ownership of the Nginx directories to the non-root user
RUN chown -R nginxuser:nginxgroup /usr/share/nginx /var/cache/nginx /var/run

# Switch to the non-root user
USER nginxuser

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
