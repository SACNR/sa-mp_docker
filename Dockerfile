FROM debian:stretch

LABEL maintainer "Jamie <jamie@sacnr.com>"

RUN dpkg --add-architecture i386

RUN apt-get update && apt-get install -y lib32stdc++6 supervisor && apt-get clean

ADD /conf/supervisord.conf /etc/
CMD ["supervisord", "-n"]

EXPOSE 7777
EXPOSE 7777/udp
