#!/bin/bash
#################################################
# latex-bereinigen.sh:                          #
# Dieses Skript bereinigt einen Ordner,         #
# in welchem eine LaTeX-Datei übersetzt wurde,  #
# von nicht mehr benötigten LaTeX-Hilfsdateien. #
#################################################

dateien=$(ls *.{aux,log,synctex.gz,toc} 2>/dev/null)

if [ ! -n "$dateien" ]
then
	echo "Keine zu löschenden Dateien vorhanden."
	echo "0 Dateien gelöscht"
	exit 0
fi

echo "Die folgenden Dateien werden gelöscht (LaTeX-Hilfsdateien):"
echo "$dateien"
IFS=$'\n'

#size=0
#for datei in $dateien
#do
#	size=$size+$((cat $datei | wc -c))
#done
#echo "Nach dieser Operation werden $size Byte freigegeben"

echo -n "Fortfahren? [J/n] "
read confirm

removed=0
if [ "$confirm" = "J" -o "$confirm" = "j" ]
then
	for datei in $dateien
	do
		rm "$datei"
		removed=$removed+1
	done
	echo "$removed Dateien gelöscht"
	exit 0
else
	echo "Abgebrochen" 1>&2
	echo "0 Dateien gelöscht"
	exit 1
fi
