FROM  ubuntu:latest
LABEL maintainer="dorra.moujri@gmail.com"
RUN apt-get update && \
    apt-get install -y zip &&  \
    apt-get install -y apache2 && \
    apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80 22

