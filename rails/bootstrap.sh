###############################################################################
# Creates a Ruby on Rails development environment with some common gems installed
# Ruby 2.3.1
# Rails 5.0.0
#
# This was created by following along here
#   http://railsapps.github.io/installrubyonrails-ubuntu.html
# With a little help from https://rvm.io/rvm/install to figure out how to get
# the key needed for the RVM install
# You may also find some inspiriation from the Rails Core development environment
# found here https://github.com/rails/rails-dev-box. It is for contributing
# to the Rails gem, not for Rails app development. But it still a good reference.
###############################################################################

# Freshen up the place
sudo apt-get update
sudo apt-get install curl

# We will need this key while running the Ruby Version Manager install script
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# Get and run a script to install RVM and Ruby
curl -L https://get.rvm.io | bash -s stable --ruby
# Run this script to finish RVM install
source /home/vagrant/.rvm/scripts/rvm

# Update RVM and make sure we have and use Ruby 2.3.1
rvm get stable --autolibs=enable
rvm install ruby-2.3.1
rvm --default use ruby-2.3.1

# Need a javascript run time to run ruby on linux
sudo apt-get install -y nodejs

# Update the gem manager and our gems
gem update --system
rvm gemset use global
gem update

# Install gems that will probably be used in all applications
gem install bundler
gem install nokogiri
gem install rails # installs into global gemset. Probably want this project specific in future.

# Create a directory shared by host OS for our rails projects
# This way, you can edit files on your Host OS using a text editor with a GUI
mkdir /vagrant/projects

# TODO install SQLite
# TODO install PostgreSQL
