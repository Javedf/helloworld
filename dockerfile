FROM ubuntu

RUN apt-get update
RUN apt-get install -y apache2
ADD . /var/www/html

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2


#ENTRYPOINT ["/usr/sbin/apache2"]
CMD apachectl -D FOREGROUND
