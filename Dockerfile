FROM ubuntu

MAINTAINER Lee Liu <lee@logdna.com>

COPY logdna.gpg /etc/

RUN echo "deb http://repo.logdna.com stable main" > /etc/apt/sources.list.d/logdna.list && \
    apt-key add /etc/logdna.gpg && \
    apt-get -y update && \
    apt-get -y install logdna-agent

CMD ["/usr/bin/logdna-agent"]
