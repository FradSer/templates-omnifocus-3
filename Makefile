build: Templates.applescript
	rm -f Templates.scpt
	osacompile -o Templates.scpt Templates.applescript
# Take an image and make the image its own icon:
	sips -i icon.png
# Extract the icon to its own resource file:
	DeRez -only icns icon.png > tmpicns.rsrc
# append this resource to the file you want to icon-ize.
	Rez -append tmpicns.rsrc -o Templates.scpt
# Use the resource to set the icon.
	SetFile -a C Templates.scpt
# clean up.
	rm tmpicns.rsrc

install: build
	rm -f ~/Library/Application\ Scripts/com.omnigroup.OmniFocus2/Templates.scpt
	cp Templates.scpt ~/Library/Application\ Scripts/com.omnigroup.OmniFocus2/Templates.scpt
