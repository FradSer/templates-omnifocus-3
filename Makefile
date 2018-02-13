build: Templates.applescript
	rm -f Templates.scpt
	osacompile -o Templates.scpt Templates.applescript
	./set-image.py icon.png Templates.scpt

install: build
	rm -f ~/Library/Application\ Scripts/com.omnigroup.OmniFocus2/Templates.scpt
	cp Templates.scpt ~/Library/Application\ Scripts/com.omnigroup.OmniFocus2/Templates.scpt
