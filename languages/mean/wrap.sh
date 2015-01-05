#!/usr/bin/env bash
set -e
address='0.0.0.0:3000'
sudo netstat -ntlp
pidof mongod | xargs sudo kill -9
sudo netstat -ntlp
env
docker run -v /data:/data -p 27017:27017 -p 28017:28017 -d --name mongo_deamon brownman/mongo sh -c 'mongod --rest --httpinterface --smallfiles'
docker run -p 3000:3000 -p 35729:35729  --link mongo_deamon:db -i brownman/mean bash < test.sh &
while true; do  curl $address 2>/dev/null && break ; sleep 1 ; done


