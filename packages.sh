#!/bin/bash

# Installing Node
# Installing node's global packages.
# NOTE: This requires to have been 'source ~/.profile' before.
source ~/.profile
source ~/.bashrc

export NVM_DIR="/home/yayu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$PATH:$HOME/.rvm/bin" 


nvm install stable 
nvm alias default stable 
nvm use default
npm install -g yo gulp grunt-cli eslint babel-eslint eslint-plugin-react mocha coffee-script webpack webpack-dev-server nodemon

# Installing ruby & rails.
# NOTE: This requires to have been 'source ~/.profile' before.
rvm install 2.2.1
rvm use 2.2.1
rvm --default use 2.2.1
gem install rails

