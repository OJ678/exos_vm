FROM python:3
MAINTAINER nicolas <nicolas.sangouard@zaclys.net>

COPY /http/index.html /
COPY /serveur_http.py /

EXPOSE 7000

CMD python serveur_http.py
#CMD python -m http.server 7000
