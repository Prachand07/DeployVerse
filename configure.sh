#!/bin/bash

# Update and install httpd
sudo yum update -y
sudo yum install -y httpd

# Start and enable httpd service
sudo systemctl start httpd
sudo systemctl enable httpd

# Set file permissions for appspec.yml and other files
sudo chmod 644 /opt/codedeploy-agent/deployment-root/*/deployment-archive/appspec.yml
sudo chmod 755 /opt/codedeploy-agent/deployment-root/*/deployment-archive/configure.sh
sudo chmod -R 755 /opt/codedeploy-agent/deployment-root/*/deployment-archive/build/

# Set ownership of files to ec2-user
sudo chown -R ec2-user:ec2-user /var/www/html

echo "Deployment complete and server restarted successfully."
