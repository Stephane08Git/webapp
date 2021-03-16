FROM ubuntu
MAINTAINER stephane (toffoletti-stephane@hotmail.fr)
EXPOSE 80
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install nginx -y
RUN apt-get install git -y
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
