install:
	cp -rv etc/runit/sv/* /etc/runit/sv/
	chmod +x /etc/runit/sv/vmware-vmblock-fuse/run
	chmod +x /etc/runit/sv/vmtoolsd/run
	chmod +x /etc/runit/sv/vmwaretools/run
	ln -s /etc/runit/sv/vmware-vmblock-fuse /run/runit/service
	ln -s /etc/runit/sv/vmtoolsd /run/runit/service
	ln -s /etc/runit/sv/vmwaretools /run/runit/service

uninstall:
	sv stop vmwaretools
	sv stop vmtoolsd
	sv stop vmware-vmblock-fuse
	rm -rvf \
		/run/runit/service/vmware-vmblock-fuse \
		/run/runit/service/vmtoolsd \
		/run/runit/service/vmwaretools \
		/etc/runit/sv/vmware-vmblock-fuse \
		/etc/runit/sv/vmtoolsd \
		/etc/runit/sv/vmwaretools
