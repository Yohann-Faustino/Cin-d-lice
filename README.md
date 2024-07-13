# Cinédélice

## Description:

Ciné délices est bien plus qu'un simple livre de recettes,
c'est une aventure culinaire à travers les mondes
magiques du cinéma et des séries. Notre concept
repose sur l'idée de réunir l'art du cinéma et de la
télévision avec la magie de la cuisine. Ce site de
recettes vous permettra de recréer les plats
emblématiques que vous avez vu sur grand écran ou à
la télévision, directement dans votre propre cuisine.

## Installation:

- npm i pour installer les dépendances du projet
- .env.exemple a récupérer et renommer en .env et remplacer selon
- Création de la BDD:
	1.psql -U postgres -> On se connecte en tant que super utilisateur
	2.CREATE USER nom_utilisateur WITH PASSWORD 'mdp_super_secure'; -> Cré et utilisateur avec son mot de passe
	.CREATE DATABASE nom_bdd WITH OWNER nom_utilisateur; -> Cré la bdd avec son nom et la lie à un l'utilisateur
	3.psql -d nom_bdd -U nom_utilisateur; -> On se connecte a la bdd
	4.psql -d nom_bdd -U nom_utilisateur -f ./chemin/migrate.sql -> Lance le migrate.sql afin de gérer les modifications à apporter a la bdd
	5.psql -d nom_bdd -U nom_utilisateur -f ./chemin/seeding-x.sql -> Rempli la bdd avec les données saisies (attention 3 fichiers existants)

## Utilisation:

- npm run dev -> Permet de lancer Nodemon et avoir un appercue du projet 

## Contribution:

Si vous avez des suggestions ou que vous remarquez des erreurs, merci de créer un ticket

## Structure du projet:

projet/
│
├── app/                    # Répertoire source
│   ├── controllers/        # Organisation des parties de l'application
│   ├── data/               # Fichiers migrate et seeding
│   ├── middleware/         # Code pour les sessions
│   ├── models/             # Modèles de données
│   ├── views/              # Vues des pages et leurs partials
│   └── router.js           # Routes
│
│
├── public/                 # Fichiers publics
│   ├── css/                # Variable, main.css et le reste du css
│   ├── film-img/           # Images des films
│   ├── img/                # Images du projet 
│   └── recette-img/        # Image des recettes
│
│
├── READ_ME.md              # Ce fichier README
├── .env                    # Données secrètes
├── .env.example            # Modèle de configuration des données secrètes
├── .gitignore              # Contiens le nom des fichiers qui ne seront pas push
├── index.js                # Configuration du projet
├── package.json            # Décris les détails du projet et ses dépendances
├── package-lock.json       # Assure la reproductibilité et la cohérence du projet
└── ...



