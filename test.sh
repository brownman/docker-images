#!/bin/bash

set_env(){
    cmd='python app.py'
    CONTAINER_APP='brownman/nvm' 
    CONTAINER_DB='brownman/mongo'         
    vol_from='/src/webapp'
    vol_to='/opt/webapp'
    db='mongo'
    alias1='mongo_deamon'
}


volume1(){
    sudo docker run -d -P --name "$alias" -v "$vol_from":"$vol_to" "$CONTAINER_APP" "$cmd"
    
}
linking1(){
    #https://docs.docker.com/examples/running_redis_service/
#sudo docker run --name $alias1 -d $CONTAINER_DB
sudo mkdir -p /data/db
#docker run -v /data:/data --name $name -d mongo
sudo docker run -v /data:/data --name $alias1 -d mongo mongod --smallfiles

#Create your web application container
#Next we can create a container for our application. We're going to use the -link flag to create a link to the redis container we've just created with an alias of db. This will create a secure tunnel to the redis container and expose the Redis instance running inside that container to only this container.
sudo netstat -ntlp
#docker run --link $alias1:db -i -t -rm $CONTAINER_APP /bin/bash -c env

#sudo mkdir -p /data/db
#docker run -v /data:/data --name mongodb -d mongo
#sudo docker run -d --name db training/postgres
##sudo docker run -d --name db mongodb
#sudo docker run -t -i --rm --link db:db training/webapp /bin/bash
#sudo docker run -t -i --rm --link db:db brownman/nvm /bin/bash -c env 
}

steps(){
set_env
linking1
}

steps
