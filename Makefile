# $FreeBSD: head/en_US.UTF-8/books/porters-handbook/book.xml 48496 2017-03-30 01:37:53Z xsan $

PORTNAME=	shadowsocks-libev
PORTVERSION=	3.0.5
MASTER_SITES=https://github.com/shadowsocks/shadowsocks-libev/releases/download/v${PORTVERSION}/

CATEGORIES=	net
MAINTAINER= yp2008cn@gmail.com
COMMENT=    Lightweight tunnel proxy which can help you get through firewalls

LICENSE=	GPLv3

LIB_DEPENDS= libudns.so:dns/udns \
	libev.so:devel/libev \
	libsodium.so:security/libsodium \
	libmbedcrypto.so:security/mbedtls \
	libpcre.so:devel/pcre

USE_RC_SUBR=	shadowsocks_libev

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-documentation

post-install:
	${MKDIR} ${STAGEDIR}${ETCDIR}
	${CP} ${WRKSRC}/debian/config.json ${STAGEDIR}${ETCDIR}/config.json.sample

.include <bsd.port.mk>