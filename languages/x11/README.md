```bash
docker build -t ubuntu-x11 .

#To "simplify" (not having to edit the Dockerfile for other users) you can comment out the adduser line in the #Dockerfile and run

(cat Dockerfile ; echo "RUN adduser $LOGNAME") \
| docker build -t ubuntu-x11 -

#Now I created a little helper script (run-with-x11.sh)

docker run -i -t --rm \
  -e DISPLAY=$DISPLAY \
  -u $USER \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  "$@" ubuntu-x11 bash

#The quoted $@ enable you to pass additional docker options, e.g. map volumes.

#Now you can 
$ ./run-with-x11.sh 
USER@83f1afe646d9:/$ xeyes &
[1] 9
USER@83f1afe646d9:/$ ps x
  PID TTY      STAT   TIME COMMAND
    1 ?        Ss     0:00 bash
    9 ?        S      0:00 xeyes

   10 ?        R+     0:00 ps x

```
[link](http://catch-0x16.blogspot.co.il/2014/09/docker-with-x-forwarding.html)

run chrome (x11)
---
-  http://dockerfile.github.io/#/chrome
```bash
docker run -it --rm -p 5901:5901 dockerfile/chrome USER=root vncserver :1 -geometry 1280x800 -depth 24
#Connect to vnc://<host>:5901 via VNC client.
```
