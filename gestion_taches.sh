#!/bin/bash

fichier="taches.txt"

#Vérification de l'existance du fichier avant de l'ajouter
if ! [ -e $fichier ];then
    touch $fichier
fi

#Fonction qui affiche le menu
afficher_menu(){
    echo -e "Bienvenue dans le gestionnaire de tâches.\n"
    echo -e "Veuillez choisir une option : \n"
    echo "1) Ajouter une tâche"
    echo "2) Afficher les tâches"
    echo "3) Supprimer une tâche"
    echo "4) Quitter"

}

#Fonction qui récupère l'ID de la prochaine tâche à créer
prochain_id(){
    echo $(($(wc -l < "$fichier") + 1))
}

#Fonction pour ajouter une tâche
ajouter_tache(){
    description_tache=""
    until [ -n "$description_tache" ];do
        read -r -p "Veuillez saisir une tâche : " description_tache
    done
    echo "$(prochain_id);$description_tache" >> $fichier
    echo "La tâche a été ajoutée avec succès."
    return 0
}

#Fonction pour afficher les tâches
afficher_taches(){
    if ! [ -s "$fichier" ];then
        echo "Aucune tâche à afficher."
        return 1
    fi
    echo -e "Liste des tâches :\n"
    awk -F';' '{print $1 ") " $2}' $fichier
    return 0
}

#Fonction pour supprimer les tâches
supprimer_tache(){
    local id_suppression=0
    local nb_tache=0
    nb_tache=$(wc -l < "$fichier")
    if ! [ -s "$fichier" ];then
        echo "Aucune tâche à supprimer."
        return 1
    fi
    afficher_taches
    while true; do
        read -r -p "Entrez un ID de tâche : " id_suppression
        if [[ ! "$id_suppression" =~ ^[0-9]+$ ]]; then
            echo "***Erreur : Veuillez entrer un nombre valide ***" >&2
            continue
        fi
        if [ "$id_suppression" -gt "$nb_tache" ] || [ "$id_suppression" -eq 0 ]; then
            echo "*** Erreur : Veuillez entrer un nombre entre 1 et $nb_tache ***" >&2
            continue
        fi
        sed -i "${id_suppression}d" "$fichier"
        echo "La tâche a été supprimée avec succès."
        break
    done
    return 0   
}

#Fonction principale
main(){
    choix=0
    #Boucle principale des choix
    until [ "$choix" -eq 4 ]; do
        afficher_menu
        read -r choix
        case "$choix" in
            1)
                ajouter_tache
            ;;
            2)
                afficher_taches
            ;;
            3)
                supprimer_tache
            ;;
            4)
                echo "Merci d'avoir utilisé le gestionnaire de tâches. À bientôt !"
            ;;

        esac
    done
}

#Appel de la fonction principale
main