POOL_DIR := ../palette/dpkg/pool

all:  dpkg

debian: 
	fakeroot dpkg-deb -b debian .
	mkdir -p $(POOL_DIR)
	cp -f *.deb $(POOL_DIR)

.PHONY: debian

dpkg: debian

clean: clean-debian
	rm -f *.deb
.PHONY: clean
