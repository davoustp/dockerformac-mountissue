FROM alpine:3.4
MAINTAINER pascal.davoust@eptica.com

ADD src/filetoreplacein.txt /usr/local/me/
ADD src/replace.sh /usr/local/me/

RUN chmod +x /usr/local/me/replace.sh

WORKDIR /usr/local/me/

VOLUME /tmp

ENTRYPOINT /usr/local/me/replace.sh