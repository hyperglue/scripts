all:
	@echo "Run 'make install' to install"

install:
	install -m 755 -d /usr/local/bin
	install -m 755 -d /usr/local/sbin
	install -m 755 find-apparmor-profiles.sh /usr/local/bin
	install -m 755 busybox-make-hardlinks.sh /usr/local/sbin 

