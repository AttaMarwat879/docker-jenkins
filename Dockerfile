FROM centos:latest
MAINTAINER attamarwat879@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/rocket-internet.zip   /var/www/html/
WORKDIR /var/www/html
RUN unzip rocket-internet.zip
RUN cp -rvf rocket-internet/* .
RUN rm -rf _MACOSX rocket-internet rocket-internet.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
