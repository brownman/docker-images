
docker build -t mean .
docker run -p 27017:27017 -d --name db mongo
#docker run -p 3000:3000 --link db:db_1 mean


#and mount /app and /public as volumes:



#To enable live reload, forward port 35729 
mkdir /tmp/myApp
docker run -p 3000:3000 -p 35729:35729 -v /tmp/myApp:/home/mean/myApp --link db:db_1 mean
