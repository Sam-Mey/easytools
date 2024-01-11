#!/bin/bash

# Clone the repository
git clone https://github.com/Sam-Mey/easytools.git

# Find all .sh files and chmod +x
find easytools -name "*.sh" -exec chmod +x {} \;

# Create a symbolic link for menu.sh
ln -s "/root/easytools/menu.sh" "/usr/local/bin/et"

# Run 'et' command (make sure 'et' is set up before this point)
et

# Wait for a while to ensure 'et' has finished
sleep 5

# Delete script after Run 'et'
find / -name "setup_easytools.sh" -exec rm {} \;