FROM centos:latest
MAINTAINER attamarwat879@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https:// https://www.express.com.pk/epaper/Index.aspx?Issue=NP_ISB  /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf makrkups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
