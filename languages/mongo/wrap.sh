#docker run -d -p 27017:27017 -p 28017:28017 --name mongodb dockerfile/mongodb mongod --rest --httpinterface
#as suggested on that page, then ran
#docker run -d -p 8080:8080 --name service_app --link mongodb:mongodb myorg/service_app:v1

docker build -t mongo .
