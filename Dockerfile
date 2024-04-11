FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt install git -y
RUN rm -rf /var/www/html/index.html
RUN git clone https://github.com/shankgcloud/website.git /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
