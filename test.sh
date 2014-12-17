#!/bin/bash

set_env(){
    cmd='python app.py'
    CONTAINER_APP='brownman/nvm'
    CONTAINER_DB='mongo'
    alias='fresh'
    vol_from='/src/webapp'
    vol_to='/opt/webapp'
}




run(){
sudo docker run -d -P --name "$alias" -v "$vol_from":"$vol_to" "$CONTAINER_APP" "$cmd"
}

steps(){
set_env
run
}

steps
