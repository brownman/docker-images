#!/bin/bash 

echo which docker image should I pull ?

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
host='0.0.0.0'
port=4444
address="$host:$port"
#RUN TESTS
container1='vvoyer/docker-selenium-firefox-chrome'
container2='eperoumalnaik/docker-chrome-selenium'
}

intro(){
ps fax
netstat -ntlp
env
}

run(){
  local container="$1"
  
  commander docker pull $container1
  commander docker run --privileged -p $port:$port -p 5999:5999 -d $container1 # < test.sh &
  docker ps
  
#ACCESS FROM HOST
while true; do  try curl $address &>/dev/null && break || { echo waiting for selenium-server; }; sleep 1 ; done
commander curl $address/status
}


try run $container1
try run $container2



