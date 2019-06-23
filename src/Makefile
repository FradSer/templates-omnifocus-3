rm -f ../Templates.scpt
osacompile -o Templates.scpt Templates.applescript
echo "read 'icns' (-16455) \"Icon.icns\";" >> Icon.rsrc
Rez -a Icon.rsrc -o Templates.scpt
SetFile -a C Templates.scpt
rm Icon.rsrc
mv Templates.scpt ../
