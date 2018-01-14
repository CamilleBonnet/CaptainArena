# Captain Challenge!
Application simpliste créée pour CaptainContrat en quelques heures.

**But**: monter une plateforme Web où des personnages peuvent s'affronter et combattre :)

## Ce qui a été fait
Tous les personnages sont des **Captains connus** qui peuvent s'affronter grâce à leur attaque particulière **plus ou moins** puissante.

Le site se compose
 - landing page classique, avec navbar, banner et footer
 - une page de l'application divisée en 3 parties
    + gauche: la liste de tous les Captains **(CRUD)**
    + milieu: l'ensemble des combats **en cours ou déjà joués**
    + droite: le **classement** des différents Captain

## Comment faire combattre ?
Il est possible d'ajouter un nouveau combat
Si dans un combat, un captain est sélectionné pour combatte lui-même, une notification d'erreur s'affichera.

Une fois sur le ring, un bouton **"FIGHT !"** permet de les faire combatre.
De manière aléatoire, un des deux captains va combattre l'autre.
Le premier qui a 0 vie de restante, perd et le combat cesse


## limitation
N'ayant eu que peu de temps pour faire ce test, voici les principales limitations techniques:
 - La gestion du combat aurait pu etre fait via API (en JS)
 - L'historique des coups pourrait être stocké dans des registres appartenant à chaque combat
 - le front (choix des couleurs, police, disposition) pourrait être amélioré (notamment la show page des captains qui est basique)
 - ajouter des armures et boucliers pour complexifer les combats
 - des validations pourraient être ajoutées pour rendre le site plus réaliste (puissance des attaques positive, nb de vie positifs, etc.)


`URL` : https://captain-arena.herokuapp.com/
`GitHub` : https://github.com/CamilleBonnet/CaptainArena

