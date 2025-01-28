#!/bin/bash

# Set permissions on /var/www/html
sudo chmod -R 755 /var/www/html

# Start and enable httpd (Apache)
sudo systemctl start httpd
sudo systemctl enable httpd

# Copy deployment content to web server root
sudo cp -r /opt/codedeploy-agent/deployment-root/*/deployment-archive/* /var/www/html/

# Ensure Apache is running properly
sudo systemctl status httpd
