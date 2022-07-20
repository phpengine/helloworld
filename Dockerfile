FROM ubuntu:20.04

WORKDIR /app

RUN echo "install apache"
RUN apt-get update
RUN apt-get install -y apache2 curl

RUN echo "copy in index html"
COPY index.html /var/www/html/

CMD [ "apachectl", "-D", "FOREGROUND" ]

