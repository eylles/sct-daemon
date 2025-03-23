.POSIX:
PREFIX = ${HOME}/.local
.PHONY: install uninstall


install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	chmod 755 sctd
	cp -vf sctd ${DESTDIR}${PREFIX}/bin/sctd
uninstall:
	rm -vf ${DESTDIR}${PREFIX}/bin/sctd

