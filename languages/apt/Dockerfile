
FROM ubuntu:14.04
MAINTAINER  Sytse Sijbrandij "sytse@gitlab.com"

ENV DEBIAN_FRONTEND noninteractive
#https://github.com/gitlabhq/gitlab-ci-runner/blob/master/Dockerfile
# Update your packages and install the ones that are needed to compile Ruby
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl libxml2-dev libxslt-dev libcurl4-openssl-dev libreadline6-dev libssl-dev patch build-essential zlib1g-dev openssh-server libyaml-dev libicu-dev
