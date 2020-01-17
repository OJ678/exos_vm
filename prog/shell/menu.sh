#!/bin/bash
askUserName(){
	echo "Saisissez le nom de l'utilisateur :"
	read -r user
}

verifyUser(){
	grep "^$user:" /etc/passwd > /dev/null
	if [ $? -eq 0 ]; then
		echo "L'utilisateur '$user' existe bien."
	else
		echo "L'utilisateur '$user' n'existe pas !"
	fi
}

getUID(){
	#uid=$(grep "^$user:" /etc/passwd | cut -d":" -f3)
	id $user > /dev/null 2>&1
if [ $? -eq 1 ]; then
	echo "L'utilisateur '$user' n'existe pas !"
	else
	        uid=$(id $user -u)
		echo "L'UID de l'utilisateur '$user' est $uid."
	fi	
}

# Debut du programme
echo "menu :"
echo "1 - Vérifier l'existence d'un utilisateur"
echo "2 - Connaître l'UID d'un utilisateur"
echo "q - Quitter"
echo "Saisissez votre choix :"
read -r value

case $value in
	# Verifier l'existence de l'utilisateur
	1) askUserName 
		verifyUser;;
	# Donner l'UID de l'utilisateur
	2) askUserName 
		getUID;;
	# Sortir
	q) exit ;;
esac
