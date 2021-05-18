FROM centos:latest
RUN yum install -y httpd unzip zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/delex.zip /var/www/html
WORKDIR /var/www/html
RUN unzip delex.zip
RUN cp -rvf delex/* .
RUN rm -rf delex delex.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
