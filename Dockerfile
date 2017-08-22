FROM centos
MAINTAINER Amar Lukade amar.lukade@example.com
RUN yum check-update --security
RUN yum update --security
RUN yum install tree -y
RUN yum install httpd httpd-manual mod_ssl -y
COPY ./index.html /var/www/html
EXPOSE 80 
EXPOSE 8080
EXPOSE 443
ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]

