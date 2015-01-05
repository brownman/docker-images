
#docker build -t mean .
#docker run -p 27017:27017 -d --name db mongo
#docker run -p 3000:3000 --link db:db_1 mean

#To enable live reload, forward port 35729 and mount /app and /public as volumes:
docker run -p 3000:3000 -p 35729:35729 -v /Users/mdl/workspace/mean-stack/mean/public:/home/mean/public -v /Users/mdl/workspace/mean-stack/mean/app:/home/mean/app --link db:db_1 mean
