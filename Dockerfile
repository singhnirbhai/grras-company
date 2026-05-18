# Use nginx lightweight image
FROM nginx:alpine

# Remove default nginx webpage
RUN rm -rf /usr/share/nginx/html/*

# Copy all website files
COPY . /usr/share/nginx/html/

# Expose web port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
