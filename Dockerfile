FROM centos
RUN yum install httpd -y
CMD  /usr/sbin/httpd -D FOREGROUND
LABEL version="1.0"
EXPOSE 80
ENV MYNAME=RAGHU
ADD index.html /var/www/html
VOLUME /data
WORKDIR /tmp
ONBUILD ADD demo.html /tmp
USER daemon
HEALTHCHECK CMD ls -ld /abc || exit 1
