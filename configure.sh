#!/bin/bash

# Update packages and install httpd if not already installed
sudo yum update -y
sudo yum install -y httpd

# Start and enable the Apache service
sudo systemctl start httpd
sudo systemctl enable httpd

# Set proper permissions on /var/www/html
sudo chmod -R 755 /var/www/html

# Copy the application files to /var/www/html
sudo cp -r /opt/codedeploy-agent/deployment-root/*/deployment-archive/* /var/www/html/

# Ensure Apache is running properly
sudo systemctl status httpd
