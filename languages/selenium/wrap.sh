echo which docker image should I pull ?

docker pull vvoyer/docker-selenium-firefox-chrome
docker run --privileged -p 4444:4444 -p 5999:5999 -d vvoyer/docker-selenium-firefox-chrome

curl 0.0.0.0:4444/status
