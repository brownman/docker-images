#!/usr/bin/env bash
set -e
sudo netstat -ntlp
pidof mongod | xargs sudo kill -9
sudo netstat -ntlp

#sudo service mongod status
#sudo service mongod stop
env

#docker build -t mean .
#( docker run -t brownman/mean ) || ( docker build -t mean . )

#docker run -p 27017:27017 -d --name db mongo
docker run -v /data:/data -p 27017:27017 -p 28017:28017 -d --name mongo_deamon brownman/mongo sh -c 'mongod --rest --httpinterface --smallfiles'

#docker run -p 3000:3000 --link db:db_1 mean


#and mount /app and /public as volumes:
#-v /Users/mdl/workspace/mean-stack/mean/public:/home/mean/public -v /Users/mdl/workspace/mean-stack/mean/app:/home/mean/app


#To enable live reload, forward port 35729 
#docker run -p 3000:3000 -p 35729:35729  --link mongo_deamon:db -t brownman/mean
#docker run -p 3000:3000 -p 35729:35729  --link mongo_deamon:db -t brownman/mean bash < test.sh

#docker run -i -t brownman/mean bash < test.sh
#docker run -p 3000:3000 -p 35729:35729  -i -t brownman/mean bash < test.sh
docker run -p 3000:3000 -p 35729:35729  --link mongo_deamon:db -t brownman/mean bash 'env; source ~/.bashrc; cd myApp; npm link; mean status; node_modules/grunt-cli/bin/grunt test; node_modules/grunt-cli/bin/grunt'
#< test.sh

