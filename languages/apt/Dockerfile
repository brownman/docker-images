FROM        ubuntu:12.10
MAINTAINER  pgolm "golm.peter@gmail.com"


# apt-get deps
RUN         apt-get update -y
RUN         apt-get install -y -q sudo wget git build-essential libicu-dev \ 
 lsb-release software-properties-common tklib zlib1g-dev libssl-dev \
 libreadline-gplv2-dev libxml2 libxml2-dev libxslt1-dev

RUN 		add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
