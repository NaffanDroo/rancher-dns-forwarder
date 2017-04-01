FROM alpine:3.4

RUN apk --update upgrade && \
    apk add --update bind && \
    rm -rf /var/cache/apk/*

EXPOSE 53/udp
WORKDIR /etc/bind

ADD ./docker/conf/named.conf /etc/bind/named.conf

ADD ./docker/entrypoint.sh /entrypoint.sh
RUN chmod 750 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD [""]
