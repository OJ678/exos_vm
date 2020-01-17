FROM debian
MAINTAINER nicolas <nicolas.sangouard@zaclys.net>

RUN export DEBIAN_FRONTEND=noninterractive && apt-get update && apt-get -y -q upgrade && apt-get -y -q install apache2

EXPOSE 80 443

CMD ["apache2ctl","-D","FOREGROUND"]
