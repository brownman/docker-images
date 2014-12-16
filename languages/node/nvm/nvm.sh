# Install nvm
#USER=$USER
#HOME=/home/$USER
NVM_DIR=$HOME/.nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.18.0/install.sh | bash

# Install nodejs/npm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install v0.10.33
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm alias default 0.10.33

# Install brunch
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && npm install -g bower
