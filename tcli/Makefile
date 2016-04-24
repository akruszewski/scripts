VERSION = 0.0.1
PREFIX  = /usr/local
BINDIR  = $(PREFIX)/bin
MANDIR  = $(PREFIX)/share/man

all: install

install:
	@chmod 755 tcli
	@cp tcli ${BINDIR}/tcli
	@chmod 644 tcli.1
	@sed "s/VERSION/${VERSION}/g" < tcli.1 > ${MANDIR}/man1/tcli.1

uninstall:
	@rm ${BINDIR}/tcli \
		${MANDIR}/man1/tcli.1

.PHONY: all install uninstall
