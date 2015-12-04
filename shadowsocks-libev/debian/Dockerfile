#
# Dockerfile for shadowsocks-libev
#
FROM debian:jessie
MAINTAINER Wind4 <puxiaping@gmail.com>

ENV BUILD_DEPS autoconf curl gcc make libtool libssl-dev
RUN apt-get update \
 && apt-get install -y $BUILD_DEPS

ENV BUILD_VER 2.4.1
RUN BUILD_SRC=https://github.com/shadowsocks/shadowsocks-libev/archive/v$BUILD_VER.tar.gz \
 && BUILD_DIR=shadowsocks-libev-$BUILD_VER \
 && curl -sSL $BUILD_SRC | tar xz \
 && cd $BUILD_DIR \
 && ./configure \
 && make install \
 && cd .. \
 && rm -rf $BUILD_DIR \
 && apt-get autoclean \
 && apt-get autoremove -y $BUILD_DEPS

ENTRYPOINT ["/usr/local/bin/ss-server"]
CMD ["-h"]
