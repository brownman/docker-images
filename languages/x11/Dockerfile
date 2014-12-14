#http://catch-0x16.blogspot.co.il/2014/09/docker-with-x-forwarding.html
FROM ubuntu:14.04
ENV USER1 travis
RUN apt-get update
run apt-get upgrade -y
run apt-get install -y x11-apps 
RUN adduser $USER1
