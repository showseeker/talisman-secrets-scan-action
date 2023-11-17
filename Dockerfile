FROM alpine:3

RUN apk add git

ADD ["https://github.com/thoughtworks/talisman/releases/download/v1.31.0/talisman_linux_amd64", "/talisman"]
RUN chmod +x /talisman

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
