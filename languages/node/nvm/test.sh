. $HOME/.profile
. $HOME/.bashrc

test -d myApp && cd myApp && ls && grunt test
test -d ChkBook && cd ChkBook && ls && ( ./node_modules/karma/bin/karma start karma.conf.js --browsers Chrome --single-run; ) #npm test

node -v
npm -v
bower


#npm install -g bower && which bower


#grunt-cli
#ls -l `npm root -g`
#which node
#which npm
#which mean-cli
#type mean-cli
#type mean
#'yes | mean init $HOME/myApp'
