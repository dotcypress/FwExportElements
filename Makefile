COMMANDS=	$(HOME)/Library/Application Support/Adobe/Fireworks CS6/Commands

link:
	ln -sf $(CURDIR)/Commands/Export "$(COMMANDS)/"

package:
	zip -r FwExportElements.zip . -x .git/\* \*.zip Makefile README.md

FIREWORKS= /Applications/Adobe Fireworks CS6/Adobe Fireworks CS6.app
FILE=

run:
	@test -n "$(FILE)" || (echo usage: make $@ FILE=path/to/file.png; false)
	open -a "$(FIREWORKS)" "$(FILE)"
	osascript \
		-e 'tell app "Adobe Fireworks CS6" to activate' \
		-e 'tell app "System Events" to tell application process "Adobe Fireworks CS6" to click menu item "Export Layers" of menu 1 of menu item "Export" of menu 1 of menu bar item "Commands" of menu bar 1'
