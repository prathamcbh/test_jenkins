# FROM yeasy/simple-web:latest
FROM debian
RUN  apt-get update
RUN  apt-get install -y apache2 curl net-tools
COPY ./index.html /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
