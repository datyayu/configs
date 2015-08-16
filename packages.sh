#!/bin/bash
# Source config files.
source ~/.profile
source ~/.bashrc

# Load NVM.
export NVM_DIR="/home/yayu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# Load RVM.
export PATH="$PATH:$HOME/.rvm/bin"


# Installing Node's latest version.
nvm install stable
nvm alias default stable
nvm use default

# Installing node's global packages.
npm install -g yo gulp grunt-cli eslint babel babel-eslint mocha coffee-script webpack webpack-dev-server nodemon


# Installing ruby.
# TODO: Set up gemset.
rvm install 2.2.1
rvm use 2.2.1
rvm --default use 2.2.1

# installing rails.
gem install rails
