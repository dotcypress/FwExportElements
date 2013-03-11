link:
	ln -sf $(CURDIR)/Commands/Export $(HOME)/Library/Application\ Support/Adobe/Fireworks\ CS6/Commands/

package:
	zip -r FwExportElements.zip . -x .git/\* \*.zip Makefile README.md

