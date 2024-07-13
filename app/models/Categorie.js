// Importation des classes Model et DataTypes depuis Sequelize. Model est la classe de base pour les modèles définis avec Sequelize, et DataTypes contient les types de données qui peuvent être utilisés pour définir les champs du modèle
import { Model, DataTypes } from "sequelize";

import sequelize from "../data/database.js";

// Déclaration d'une classe Categories qui hérite de Model. Cela permet à Categories de devenir un modèle Sequelize
class Categories extends Model { }

Categories.init({
    nom: {
        type: DataTypes.STRING,
        allowNull: false
    },

    
},
    {
        sequelize,
        modelName: "Categories",
        tableName: "Categories",
    });

export default Categories ;

// Un modèle en ORM comme Sequelize est une classe qui représente une table de la base de données et encapsule la logique nécessaire pour interagir avec les données de cette table. Il définit la structure des données, les types de données, les relations entre les tables et les opérations CRUD, fournissant ainsi une abstraction pratique pour manipuler les données dans une application web.