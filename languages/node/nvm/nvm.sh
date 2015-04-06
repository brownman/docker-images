# Install nvm
#USER=$USER
#HOME=/home/$USER
nvm1(){
NVM_DIR=$HOME/.nvm
#curl https://raw.githubusercontent.com/creationix/nvm/v0.18.0/install.sh | bash
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | bash
# Install nodejs/npm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install v0.10.33
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm alias default 0.10.33

# Install brunch
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && npm install -g bower grunt grunt-cli mean-cli gulp se-interpreter cordova ionic    
}

mean1(){
source $HOME.profile
source $HOME.bashrc
echo -e '\n\n' | mean init myApp
cd myApp
npm install -g
npm link
( mean status ) || true
( grunt test ) || true
}
ionic_karma_test(){
  git clone https://github.com/brownman/ChkBook.git
  cd ChkBook
  nvm link
  bower install
  #gulp karma
  #npm install -g grunt-cli
    ./node_modules/karma/bin/karma start karma.conf.js --browsers Chrome --single-run; fi

}
steps(){
nvm1
#mean1
ionic_karma_test
}
steps
