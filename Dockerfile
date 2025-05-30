# Use the official nginx image as base
FROM nginx:alpine

# Copy the website files to nginx's default html directory
COPY public/ /usr/share/nginx/html/

# Copy .env file 
COPY .env /.env

# Expose ports 80 and 8765
EXPOSE 80 8765

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 