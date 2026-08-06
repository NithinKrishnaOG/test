# Stage: Serve static HTML with Nginx
FROM nginx:alpine

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the site files into the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP port
EXPOSE 80

# Nginx runs in the foreground by default in the official image
CMD ["nginx", "-g", "daemon off;"]
