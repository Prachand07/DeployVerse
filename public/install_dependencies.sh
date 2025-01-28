#!/bin/bash

# Update the system
sudo yum update -y

# Install Nginx
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx

# Install Node.js and npm
sudo yum install -y nodejs npm

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx
