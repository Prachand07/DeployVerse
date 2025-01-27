#!/bin/bash

# Navigate to the application directory
cd /home/ec2-user/react-app

# Start the React app
echo "Starting the React app..."
nohup npm start > /dev/null 2>&1 &

# Check if the app started successfully
if [ $? -eq 0 ]; then
    echo "React app started successfully."
else
    echo "Failed to start the React app."
    exit 1
fi
