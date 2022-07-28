FROM centos:latest
MAINTAINER snehals.kadam393@gmail.com
RUN yum install httpd -y
ADD https://github.com/snehalskadam/game-of-life.git /var/www/html/
WORKDIR /var/www/html/
RUN unzip game-of-life.zip 
RUN cp -rvf game-of-life/*.
RUN rm -rf game-of-life.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 8080
