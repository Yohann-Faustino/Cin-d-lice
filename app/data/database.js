import Sequelize from 'sequelize'; //  Importation du module Sequelize, qui est utilisé pour interagir avec une base de données SQL
import * as dotenv from 'dotenv'; // Importation du module dotenv, qui est utilisé pour charger les variables d'environnement à partir d'un fichier .env.

dotenv.config(); // Charge les variables d'environnement à partir d'un fichier .env et les ajoute au processus d'exécution de Node.js

// Pour que ce code fonctionne correctement, vous devez avoir un fichier .env à la racine de votre projet avec une variable PG_URL définie
// Par exemple : PG_URL=postgres://user:password@host:port/database
//Assurez-vous de remplacer user, password, host, port et database par les informations de connexion correctes pour votre base de données PostgreSQL
const sequelize = new Sequelize(process.env.PG_URL, {
    define: {
        timestamps: false, // Indique à Sequelize de ne pas ajouter automatiquement les champs createdAt et updatedAt dans les modèles de la base de données.
        underscored: true //Indique à Sequelize d'utiliser des noms de colonnes en snake_case au lieu de camelCase
    }
});

export default sequelize;

