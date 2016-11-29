#
# Dockerfile for vlmcsd
#
FROM alpine:3.4
MAINTAINER Wind4 <puxiaping@gmail.com>

RUN apk add --update curl \
 && curl -sSL https://github.com/Wind4/vlmcsd/releases/download/svn1103/binaries.tar.gz -o binaries.tar.gz \
 && tar zxf binaries.tar.gz \
 && cp binaries/Linux/intel/static/vlmcsd-x86-musl-static /usr/bin/vlmcsd \
 && chmod 0755 /usr/bin/vlmcsd \
 && rm -rf binaries/ binaries.tar.gz \
 && rm -rf /var/cache/apk/*

EXPOSE 1688

ENTRYPOINT ["/usr/bin/vlmcsd", "-D", "-e"]
