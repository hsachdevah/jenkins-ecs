FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install apache2
RUN service apache2 start

ADD . /var/www/html/

CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
