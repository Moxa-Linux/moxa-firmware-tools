# Makefile
#	source:	entering source_code directory and compiling source code
#	install:mkdir directory for binary files and prepare package files
#	clean:	clean all binary files
#
# binary source code : source_code/*
#
#
# Harry YJ Jhou (HarryYJ.Jhou@moxa.com) 2017.01.03
#

# source code name
#SNAME=setinterface

all: source

source:
	#cd source_code/$(SNAME); make;

install:
	#debian package directory
	mkdir -p $(DESTDIR)/etc
	mkdir -p $(DESTDIR)/lib
	mkdir -p $(DESTDIR)/sbin

	#temp directory
	mkdir -p ./etc
	mkdir -p ./lib
	mkdir -p ./sbin

	#copy files to temp directory
	cp -arf source_code/etc/* etc/
	cp -arf source_code/lib/* lib/
	cp -arf source_code/sbin/* sbin/

	#copy files to package directory
	cp -arf etc/* $(DESTDIR)/etc/
	cp -arf lib/* $(DESTDIR)/lib/
	cp -arf sbin/* $(DESTDIR)/sbin/

clean:
	#cd source_code/$(SNAME); make clean;
	rm -rf etc 2>&1 >/dev/null
	rm -rf lib 2>&1 >/dev/null
	rm -rf sbin 2>&1 >/dev/null
	rm -rf debian/moxa-set-default 2>&1 >/dev/null
