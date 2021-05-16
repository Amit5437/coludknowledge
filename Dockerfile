FROM centos:latest
RUN yum install -y httpd
ADD https://www.free-css.com/assets/images/free-css-templates/page22/rambling-soul-4.jpg /var/www/html
EXPOSE 80
