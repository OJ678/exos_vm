#!/bin/bash
note=0 # TRUE en shell
while [ "$note" -ge 0 ]
do
	echo "Entrez votre note (q pour quitter) :"
	read -r note
	if [ "$note" = "q" ]; then
		note=-1
		echo "Au revoir !"
	elif [ "$note" -ge 16 ]; then
		echo "très bien"
	elif [ "$note" -ge 14 ]; then
		echo "bien"
	elif [ "$note" -ge 12 ]; then
		echo "assez bien"
	elif [ "$note" -ge 10 ]; then
		echo "moyen"
	elif [ "$note" -gt 0 ]; then
		echo "insuffisant"
	else
		echo "Au revoir !"
	fi
done
