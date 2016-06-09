#
# Dockerfile for shadowsocks-libev
#
FROM alpine:3.2
MAINTAINER Wind4 <puxiaping@gmail.com>

ENV BUILD_DEPS autoconf build-base curl libtool linux-headers openssl-dev
RUN apk add --update $BUILD_DEPS

ENV BUILD_VER 2.4.7
RUN BUILD_SRC=https://github.com/shadowsocks/shadowsocks-libev/archive/v$BUILD_VER.tar.gz \
 && BUILD_DIR=shadowsocks-libev-$BUILD_VER \
 && curl -sSL $BUILD_SRC | tar xz \
 && cd $BUILD_DIR \
 && ./configure \
 && make install \
 && cd .. \
 && rm -rf $BUILD_DIR \
 && apk del --purge $BUILD_DEPS \
 && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/ss-server"]
CMD ["-h"]
