#
# Dockerfile for n2n_v2
#
FROM alpine:3.2
MAINTAINER Wind4 <puxiaping@gmail.com>

ENV BUILD_DEPS autoconf build-base curl libtool linux-headers openssl-dev
RUN apk add --update $BUILD_DEPS

ENV BUILD_DIR /usr/src/n2n
RUN apk add subversion
RUN svn checkout --non-interactive --trust-server-cert https://shop.ntop.org/svn/ntop/trunk/n2n $BUILD_DIR

ENV BUILD_VER n2n_v2
RUN cd $BUILD_DIR/$BUILD_VER \
 && make install \
 && cd / \
 && rm -rf $BUILD_DIR \
 && apk del --purge $BUILD_DEPS subversion \
 && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/sbin/supernode", "-f"]
