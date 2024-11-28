# Projet de B2 Scripting Bash

# Gestionnaire de Tâches en Bash

## Objectif
Développer un script Bash interactif `gestion_taches.sh` pour gérer une liste de tâches stockée dans un fichier `taches.txt`. Le script permet d'ajouter, afficher et supprimer des tâches.

## Fonctionnalités
1. **Menu principal** :
   - Ajouter une tâche
   - Afficher les tâches
   - Supprimer une tâche
   - Quitter

2. **Ajouter une tâche** :
   - L'utilisateur entre une description de tâche, qui est ajoutée au fichier avec un identifiant unique.

3. **Afficher les tâches** :
   - Liste des tâches affichée avec leur identifiant et description.

4. **Supprimer une tâche** :
   - L'utilisateur sélectionne une tâche à supprimer par son identifiant.

5. **Quitter** :
   - Message de remerciement et fin du script.

## Instructions
1. Rendre le script exécutable :  
   ```bash
   chmod +x gestion_taches.sh