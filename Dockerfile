FROM debian:stretch

ARG caddy_version="0.10.10"

RUN apt-get update && apt-get -y install curl ca-certificates
RUN curl -sLO https://github.com/mholt/caddy/releases/download/v${caddy_version}/caddy_v${caddy_version}_linux_amd64.tar.gz && tar xf caddy_v${caddy_version}_linux_amd64.tar.gz
RUN mv caddy /usr/bin/caddy && chmod 755 /usr/bin/caddy
RUN rm -rf caddy*
RUN mkdir -p /var/www/caddy
WORKDIR /var/www/caddy

EXPOSE 80 443 2015

ENTRYPOINT ["caddy"]
