
echo which docker image should I pull ?


set -e
address='0.0.0.0:4444'
sudo netstat -ntlp
pidof mongod | xargs sudo kill -9
sudo netstat -ntlp
env
#docker run -v /data:/data -p 27017:27017 -p 28017:28017 -d --name mongo_deamon brownman/mongo sh -c 'mongod --rest --httpinterface --smallfiles'
#docker run -p 3000:3000 -p 35729:35729  --link mongo_deamon:db -i brownman/mean bash < test.sh &

docker pull vvoyer/docker-selenium-firefox-chrome
docker run --privileged -p 4444:4444 -p 5999:5999 -d vvoyer/docker-selenium-firefox-chrome


#test if the the running machine is accessible from the host:
while true; do  curl $address 2>/dev/null && break ; sleep 1 ; done

curl $address/status
