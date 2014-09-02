FROM kjunine/trusty
MAINTAINER Daniel Ku "kjunine@gmail.com"

RUN apt-get install -y nginx

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
