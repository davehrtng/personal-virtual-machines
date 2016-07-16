###############################################################################
# Creates a Node.js v6 development environment
#
# Steps taken from https://nodejs.org/en/download/package-manager/
###############################################################################

# Freshen up the box
sudo apt-get update

# Run a script to grab the binary distribution
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# Install nodejs and npm
sudo apt-get install -y nodejs

# In case you want to compile and install native addons from npm
sudo apt-get install -y build-essential

# Create a directory shared by host OS for node projects
# This way, you can edit files on your Host OS using a text editor with a GUI
mkdir /vagrant/projects
