#!/bin/bash 
set -u

intro(){
echo which docker image should I pull ?
}

commander(){ 
    local args=($@);
    local cmd="${args[@]}";
    echo 1>&2 cmd: $cmd;
    eval "$cmd" || { echo err cmd; exit 0; }
}
try(){ 
    local args=($@);
    local cmd="${args[@]}";
    echo 1>&2 try: $cmd;
    eval "$cmd"
}


#PRINT HOST ENV
set_env(){
name1=selenium
container_base='brownman/onbuild'
host='0.0.0.0'
port=4444
port_vlc=5999
address="$host:$port"
address_status="$address/$path/status"

path='wd/hub'
#RUN TESTS
#container1='vvoyer/docker-selenium-firefox-chrome'
container_selenium='eperoumalnaik/docker-chrome-selenium'
}

print_info(){
ps fax
netstat -ntlp
env
}

start_deamon(){
  local container="$1"
  commander docker pull $container
  commander docker run --privileged -p $port:$port -p $port_vlc:$port_vlc -d --name $name1 $container 
  docker ps
}

validate_deamon(){
#ACCESS FROM HOST
while true; do  try curl $address &>/dev/null && break || { echo waiting for selenium-server; }; sleep 1 ; done
commander curl $address_status
}

link_containers(){
echo running tests...
local container=$1
docker run -p $port:$port $port_vlc:$port_vlc  --link $name1:db -i $container bash < test.sh &
}
steps(){
intro
set_env
try start_deamon $container_selenium
try validate_deamon
try link_containers $container_base
}

steps

