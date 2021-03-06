FROM ubuntu:14.04
MAINTAINER Bryan Kendall <bryan@runnable.com>

EXPOSE 6380

RUN apt-get update && apt-get install -y stunnel4

VOLUME /stunnel
ADD ./generateconfig.sh /
ADD ./start.sh /

CMD [ "/start.sh" ]
