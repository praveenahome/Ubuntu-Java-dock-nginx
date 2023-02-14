FROM ubuntu:20.04

# Install Java 1.8
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk

# Install Nginx
RUN apt-get install -y nginx

# Expose Nginx port
EXPOSE 80

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]

COPY nginx.conf /etc/nginx/sites-enabled/default
