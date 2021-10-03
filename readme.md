# ÉVALUATION D’ENTRAÎNEMENT
## Créer et administrer une base de données
### Version GDWFSCAUBDDEXAIII2A


### Livrable attendus pour l’examen de ce bloc


À partir d’une demande client, vous allez devoir modéliser une base de données.
Les livrables attendus sont un diagramme de classes UML ou un Modèle Conceptuel de Données.

Il vous sera aussi demandé de transmettre le fichier .sql avec les lignes de commande de la retranscription
de cette base de données dans un Système de Gestion de Base de Données Relationnelles (SGBDR).


### Contexte du projet


En vue de la mise en place d’un logiciel de réservation de places de cinéma, modéliser la base de données
attendue.

Vous avez déjà eu un entretien avec le commanditaire (disponible en annexe). À partir des réponses
apportées, concevez le diagramme de classes UML ou un Modèle Conceptuel de Données.
Enfin, vous devez retranscrire ce schéma physique en tables SQL alimentées de données factices à l’aide
d’un SGBDR (ex: MariaDB, PostgreSQL) et savoir comment l’exporter pour le commanditaire.


### Modalités pédagogiques


Modalités / Restrictions :
- Modélisation de la base de données sous forme de MCD ou diagramme de classe UML
- Écriture des différents scripts SQL de création sécurisée de base de données/de ses tables ainsi
que des relations et contraintes entre elles
- Remplissage des tables avec de fausses données (toujours à l’aide de commandes SQL)
- Explication dans la description du projet d’un processus de sauvegarde de la BDD complète
Nécessité de travailler uniquement dans le terminal !
Notez toutes vos commandes dans un fichier .sql. Un export d’une application comme phpMyAdmin ne
sera pas accepté.


### Annexes - FAQ commanditaire

Est-ce qu’il y aura uniquement les séances d'un seul cinéma?
Non. Nous sommes partenaires de plusieurs complexes, et donc nous aimerions qu'il soit possible de
réserver au choix dans l'un d'entre eux.

Dans un cinéma, peut-il y avoir le passage du même film au même horaire dans plusieurs salles
différentes ?
Oui, cela arrive dans certains de nos complexes pour les blockbusters les plus rentables !

Désirez-vous que vos clients puissent choisir leur place?
Pas nécessairement. Néanmoins, il faudra bien faire attention au nombre de places disponibles dans une
salle!

Quels tarifs possibles?
- Plein tarif: 9€20
- Étudiant: 7€60
- Moins de 14 ans: 5€90

Le paiement se fera sur place ou en ligne?
Nous comptons à terme digitaliser nos tickets. S'il est possible de faire les deux, ce serait génial ! Sinon,
nous nous contenterons pour l'instant d'un paiement sur place

D'un point de vue back office, qui pourra inscrire les séances?
Il nous faudrait un ou plusieurs administrateurs chez nous ayant une vue sur tout. Mais nous aimerions
qu'un utilisateur par complexe ait les droits d'ajouter les séances de son propre cinéma
