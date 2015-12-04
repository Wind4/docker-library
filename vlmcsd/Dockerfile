#
# Dockerfile for vlmcsd
#
FROM alpine:3.2
MAINTAINER Wind4 <puxiaping@gmail.com>

RUN apk add --update curl \
 && curl -sSL https://wind4.github.io/vlmcsd/binaries/Linux/intel/static/vlmcsd-x86-musl-static -o /usr/bin/vlmcsd \
 && chmod 0755 /usr/bin/vlmcsd \
 && rm -rf /var/cache/apk/*

EXPOSE 1688

ENTRYPOINT ["/usr/bin/vlmcsd", "-D", "-e"]
