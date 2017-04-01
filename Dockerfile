FROM alpine:3.4

RUN apk --update upgrade && \
    apk add --update bind && \
    rm -rf /var/cache/apk/*

ADD ./docker/scripts/init.sh /init.sh
RUN chmod 750 /init.sh

EXPOSE 53/udp
WORKDIR /etc/bind

ADD ./docker/conf/named.conf /etc/bind/named.conf

ENTRYPOINT ["/docker/entrypoint.sh"]

CMD [""]
