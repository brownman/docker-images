
docker build -t mean .
docker run -p 27017:27017 -d --name db mongo
#docker run -p 3000:3000 --link db:db_1 mean


#and mount /app and /public as volumes:
#-v /Users/mdl/workspace/mean-stack/mean/public:/home/mean/public -v /Users/mdl/workspace/mean-stack/mean/app:/home/mean/app


#To enable live reload, forward port 35729 
docker run -p 3000:3000 -p 35729:35729  --link db:db_1 mean
