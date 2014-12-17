sudo mkdir -p /data/db
docker run -v /data:/data --name mongodb -d mongo
docker run -it --link some-mongo:mongo --rm mongo sh -c env 
docker run -it --link some-mongo:mongo --rm mongo sh -c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/test"' 
