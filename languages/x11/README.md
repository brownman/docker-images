```bash

On my Docker Talk at the Kassel Code Meetup #3 one question was how to do graphic with Docker.
I check the X11 side of it. The goal is to work with graphical programs running inside the docker container without running additional services (e.g. sshd)

Why is this interesting. First it provide a way to dockerize another class off applications and attract other user groups. First provide and isolation for endusers to run graphical application which need complex configuration or only run on certain Linux distributions. Additional it make Docker interesting for security research and security aware users by providing another isolation layer.

Through the isolation your can reduce the risk to get infected through browser exploits when you visit unsafe areas of the web (and sadly it happens frequently that "good" sites distribute malware for times). This could be extended to provide features like the Linux base Qubes OS which runs application in different security domains based on Xen including disposable VMs.
Additionally the filesystem diff for containers provides a nice start for analyzing possible infections.

But back to the original question

The basic process is described at http://stackoverflow.com/questions/25281992/alternatives-to-ssh-x11-forwarding-for-docker-containers
And actual it is very easy as X11 uses Unix Domain Sockets to communicate between the XServer and the client. And the only trick is to bind it inside the client.

So I create a minimal X11 enabled docker image with the Dockerfile (replace <USER> with your username)

FROM ubuntu:14.04
RUN apt-get update
run apt-get upgrade -y
run apt-get install -y x11-apps 
RUN adduser <USER>

Then I generated the image with

docker build -t ubuntu-x11 .

To "simplify" (not having to edit the Dockerfile for other users) you can comment out the adduser line in the Dockerfile and run

(cat Dockerfile ; echo "RUN adduser $LOGNAME") \
| docker build -t ubuntu-x11 -

Now I created a little helper script (run-with-x11.sh)

docker run -i -t --rm \
  -e DISPLAY=$DISPLAY \
  -u $USER \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  "$@" ubuntu-x11 bash

The quoted $@ enable you to pass additional docker options, e.g. map volumes.

Now you can 
$ ./run-with-x11.sh 
USER@83f1afe646d9:/$ xeyes &
[1] 9
USER@83f1afe646d9:/$ ps x
  PID TTY      STAT   TIME COMMAND
    1 ?        Ss     0:00 bash
    9 ?        S      0:00 xeyes

   10 ?        R+     0:00 ps x

```
