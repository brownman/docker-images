
FROM ubuntu:14.04
MAINTAINER  Sytse Sijbrandij "sytse@gitlab.com"

ENV DEBIAN_FRONTEND noninteractive
#https://github.com/gitlabhq/gitlab-ci-runner/blob/master/Dockerfile
# Update your packages and install the ones that are needed to compile Ruby

####################UPDATE & UPGRADE
RUN apt-get update -y
RUN apt-get upgrade -y

###################INSTALL
#gitlab_runner
RUN apt-get install -y curl libxml2-dev libxslt-dev libcurl4-openssl-dev libreadline6-dev libssl-dev patch build-essential zlib1g-dev openssh-server libyaml-dev libicu-dev
#rbenv
RUN apt-get install -y build-essential subversion autoconf libpq-dev libsqlite3-dev libmysqlclient-dev zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev
#nvm
RUN apt-get install -y build-essential libssl-dev libmysqlclient-dev

######################## CLEAN
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
