#!/bin/bash
sudo yum update -y  
sudo yum install nginx -y
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install -y nodejs

