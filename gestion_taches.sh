#!/bin/bash

fichier="taches.txt"

afficher_menu(){
    echo -e "Bienvenue dans le gestionnaire de tâches.\n"
    echo -e "Veuillez choisir une option : \n"
    echo "1) Ajouter une tâche"
    echo "2) Afficher les tâches"
    echo "3) Supprimer une tâche"
    echo "4) Quitter"

}

ajouter_tache(){
    true
}

afficher_taches(){
    true
}

supprimer_tache(){
    true
}

main(){
    afficher_menu
    until [ "$choix" -eq 4 ];do
        read -r choix
        case "$choix" in
            1)
            ;;
            2)
            ;;
            3)
            ;;
            4)
                echo "Merci d'avoir utilisé le gestionnaire de tâches. À bientôt !"
            ;;

        esac
    done
}

main