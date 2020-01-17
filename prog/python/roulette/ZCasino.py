#!/usr/bin/python3.7
from random import randrange # générateur de nombres aléatoires
from math import ceil

print("C A Z I N O")

# Déclaration des variables de départ
porte_feuille = -1
while porte_feuille < 0:
    porte_feuille = input("Combien souhaitez-vous jouer ce soir ? ")
    try: 
        porte_feuille = int(porte_feuille)
    except ValueError:
        print("Ce n'est pas un nombre")
        porte_feuille = -1
        continue

continuer_partie = True
print("... Nous allons jouer à la roulette ...")

while continuer_partie:
    # Demander la case à jouer (nombre entre 0 et 49)
    case = -1
    while case < 0 or case > 49:
        case = input("Sur quelle nombre souhaitez vous miser ? (0 à 49) ") # Case choisi
        try:
            case = int(case)
        except ValueError:
            case = -1

        if case < 0 or case > 49:
            print("Vous devez saisir un nombre entre 0 et 49")
    
    # Demander la mise
    mise = -1
    while mise < 0:
        mise = input("Combien souhaitez vous miser ? ") # Mise en euros
        try:
            mise = int(mise)
        except ValueError:
            mise = -1
            print("Il faut entrer une somme.")

    # Réponse de la roulette (50 cases de 0 à 49)
    rep = randrange(50) # donne un nombre aléatoire entre 0 et 49
    if case == rep: # Même case
        gain = 3 * mise
        print("C'est gagné :) recevez ", gain, "€")
    elif case%2 == rep%2: # Même parité
        gain = ceil(0.5 * mise)
        print("C'est perdu, mais vous avez la bonne couleur :) recevez ", gain, "€")
    else:
        gain = - mise
        print("C'est perdu pour cette fois.")
    
    # Compte rendu de la partie et suite
    porte_feuille += gain
    reponse = input("Il vous reste {0} € souhaitez vous rejouer ? (oui ou non) ".format(porte_feuille))
    # On rejoue ?
    if reponse in ["oui","o","y","yes"]:
        continuer_partie = True
    elif reponse in ["non","n","no"]:
        continuer_partie = False

    if porte_feuille <= 0:
        print("Vous n'avez plus d'argent")
        continuer_partie = False

print("A  b i e n t ô t  a u  C A Z I N O")
