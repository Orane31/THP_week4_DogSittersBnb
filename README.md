# README

Ruby version 2.7.0

Exercice THP validant : Créer une base de données pour une application qui permet de mettre en relation des Dogsitters, et des chiens, pour organiser des ballades Strolls.

Le pitch

En cours de "Bizness Growth Money Maker", on t'avait demandé de créer une entreprise à fort potentiel. À l'époque tu t'étais dit que ce serait une chouette idée de faire une plateforme où des personnes pourraient promener les chiens des autres, en échange de cash-money.

C'est dingue comme idée : ça va mettre tous les VC aux abois. Allez, on le fait !

Les models

Il y a un model dogsitter et un model dog. Un dogsitter peut promener plusieurs dog lors d'une stroll (promenade, en anglais) ; et un dog peut avoir plusieurs dogsitter via les stroll.

Maintenant tu veux préciser la ville des promeneurs et des chiens pour faire un super algorithme de matching. Tu devras donc créer un model City avec comme attribut city_name. Chaque ville contient plusieurs promeneurs et plusieurs chiens mais un chien et un promeneur ne peuvent appartenir qu'a une ville.

Pour démarrer le programme :

1. bundle install

2. rails db:migrate

3. rails db:seed

