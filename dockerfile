# Use an official nginx image
FROM nginx:alpine

# Remove the default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files into nginx’s html directory
COPY . /usr/share/nginx/html

# Expose port 80 (the default nginx port)
EXPOSE 80 E

# Start nginx (the base image’s CMD is already to run nginx in the foreground)
