#!/bin/bash 

echo which docker image should I pull ?

#PRINT HOST ENV
address='0.0.0.0:4444'
ps fax
sudo netstat -ntlp
env


#RUN TESTS
docker pull vvoyer/docker-selenium-firefox-chrome
docker run --privileged -p 4444:4444 -p 5999:5999 -d vvoyer/docker-selenium-firefox-chrome # < test.sh &
docker ps



#ACCESS FROM HOST
while true; do  curl $address 2>/dev/null && break || { echo waiting for selenium-server; }; sleep 1 ; done
curl $address/status
