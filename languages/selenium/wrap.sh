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
container_base='brownman/nvm'
host='0.0.0.0'
port=4444
port_vlc=5999
address="$host:$port"
#RUN TESTS
container1='vvoyer/docker-selenium-firefox-chrome'
container2='eperoumalnaik/docker-chrome-selenium'
}

print_info(){
ps fax
netstat -ntlp
env
}

run_host(){
  local container="$1"
  
  commander docker pull $container
  commander docker run --privileged -p $port:$port -p $port_vlc:$port_vlc -d --name $name1 $container # < test.sh &
  docker ps
  
#ACCESS FROM HOST
while true; do  try curl $address &>/dev/null && break || { echo waiting for selenium-server; }; sleep 1 ; done
commander curl $address/status
}

run_link(){
#docker run -v /data:/data -p 27017:27017 -p 28017:28017 -d --name mongo_deamon brownman/mongo sh -c 'mongod --rest --httpinterface --smallfiles'
#docker run -p 3000:3000 -p 35729:35729  --link mongo_deamon:db -i brownman/mean bash < test.sh &
echo running tests...
docker run -p $port:$port $port_vlc:$port_vlc  --link $name1:db -i $container_base bash < test.sh &
}
steps(){
intro
set_env
try run_host $container1
try run_link $container1
}

steps

