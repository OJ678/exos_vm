#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Saisir le répertoire"
	read rep
else
	rep=$1
fi

# Nombre de fichiers
n_files=$(ls -l $rep | grep "^-" | wc -l)

# Nombre de dossiers
n_folders=$(ls -l $rep | grep "^d" | wc -l)

# Nombre d'exécutables
n_ex=$(ls -l $rep | cut -d" " -f1 | grep "^-.*x$" | wc -l)

echo "Il y a $n_files fichier(s), $n_folders dossier(s) et $n_ex exécutable(s) dans $rep"

##Deuxième méthode
cd $rep
i=0
j=0
k=0
for n in *; do
	if [ -d "$n" ]; then
		let j=$j+1
	fi
	if [ -f "$n" ]; then
		let i=$i+1
	fi
	if [ -x "$n" ]; then
		let k=$k+1
	fi
done
echo "Il y a $i fichier(s), $j dossier(s) et $k exécutable(s) dans $rep"
