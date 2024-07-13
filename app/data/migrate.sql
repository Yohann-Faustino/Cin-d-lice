BEGIN;

-- Supprimer les tables si elles existent déjà pour éviter les conflits
-- CASCADE; signifie que non seulement la table "Utilisateurs" sera supprimée, mais aussi toutes les dépendances de cette table, assurant une suppression complète et évitant les erreurs de contrainte de clé étrangère ou de dépendances d'objets
DROP TABLE IF EXISTS "Utilisateurs" CASCADE;
DROP TABLE IF EXISTS "Ingredients" CASCADE;
DROP TABLE IF EXISTS "Recettes" CASCADE;
DROP TABLE IF EXISTS "Films" CASCADE;
DROP TABLE IF EXISTS "Categories" CASCADE;
DROP TABLE IF EXISTS "Recettes_Ingredients" CASCADE;
DROP TABLE IF EXISTS "utilisateur_aime_recettes" CASCADE;
DROP TABLE IF EXISTS "utilisateur_commente_recettes" CASCADE;


-- Création de la table utilisateur
CREATE TABLE "Utilisateurs" (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    nom TEXT NOT NULL, 
    prenom TEXT, 
    pseudo  TEXT, 
    adresse TEXT, 
    code_postal INTEGER,
    ville TEXT,
    email TEXT NOT NULL,
    mot_de_passe TEXT NOT NULL
);

-- Création de la table des ingrédients
CREATE TABLE "Ingredients" (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    nom TEXT NOT NULL
);



-- Création de la table des films
CREATE TABLE "Films" (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    titre TEXT NOT NULL,
    editorial TEXT,
    urlimg TEXT, -- Supposant que l'image est stockée sous forme de texte (URL ou chemin de fichier),
    anecdote TEXT
);


CREATE TABLE "Categories" (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    nom TEXT NOT NULL
);

-- Création de la table des recettes
CREATE TABLE "Recettes" (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    nom TEXT NOT NULL,
    photo TEXT, -- Supposant que la photo est stockée sous forme de texte (URL ou chemin de fichier)
    contenu TEXT,
    id_films INTEGER REFERENCES "Films"("id"),
    id_categorie INTEGER REFERENCES "Categories"("id")
);

-- Création de la table de contenir

CREATE TABLE "Recettes_Ingredients" (
   id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
   "recettes_id" INTEGER REFERENCES "Recettes"("id") ,
   "ingredients_id" INTEGER REFERENCES "Ingredients"("id"), 
   quantite TEXT NOT NULL
);

CREATE TABLE "utilisateur_aime_recettes" (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    "utilisateur_id" INTEGER REFERENCES "Utilisateurs"("id"),
    "recettes_id" INTEGER REFERENCES "Recettes"("id") 
);

CREATE TABLE "utilisateur_commente_recettes" (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    "utilisateur_id" INTEGER REFERENCES "Utilisateurs"("id"),
    "recettes_id" INTEGER REFERENCES "Recettes"("id"),
    commentaire TEXT NOT NULL
);

COMMIT;