# $OpenBSD$

BROKEN-aarch64 =	old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11
BROKEN-armv7 =		old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11

COMMENT =		command-line access to github pull requests, issues and more

V =			1.13.1
MODGO_MODNAME =		github.com/cli/cli
MODGO_VERSION =		v$V

DISTNAME =		cli-${MODGO_VERSION}
PKGNAME =		github-cli-$V

CATEGORIES =		devel
HOMEPAGE =		https://cli.github.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_LDFLAGS +=	-X "github.com/cli/cli/internal/build.Version=$V"

SEPARATE_BUILD =	Yes

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

post-install:
	${WRKDIR}/go/bin/gen-docs --doc-path ${PREFIX}/man/man1 --man-page
	rm ${PREFIX}/bin/gen-docs

.include "./modules.inc"

.include <bsd.port.mk>
