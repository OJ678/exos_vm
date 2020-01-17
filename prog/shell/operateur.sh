#!/bin/bash
calcul(){
	let res=$n1 $op $n2
	echo $res
}
if [ $# -eq 0 ]; then
	echo "Entrez un operateur de calcul (+, -, *)"
	read -r op
	echo "Entrez un nombres puis appuyez sur ENTER:"
	read -r n1
	echo "Entrez un autre nombre puis appuyez sur ENTER:"
	read -r n2
else
	n1=$1
	op=$2
	n2=$3
fi

calcul
