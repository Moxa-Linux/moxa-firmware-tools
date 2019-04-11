# Makefile
#
#	clean:	clean all binary files
#
# Harry YJ Jhou (HarryYJ.Jhou@moxa.com) 2017.01.03
#

clean:
	#cd source_code/$(SNAME); make clean;
	rm -rf etc 2>&1 >/dev/null
	rm -rf sbin 2>&1 >/dev/null
	rm -rf debian/moxa-set-default 2>&1 >/dev/null
