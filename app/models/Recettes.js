// Voir explications sur la page models de categorie.js
import { Model, DataTypes } from "sequelize";

import sequelize from "../data/database.js";


class Recettes extends Model { }

Recettes.init({
    nom: {
        type: DataTypes.STRING,
        allowNull: false
    },

    photo: {
        type: DataTypes.TEXT
    },
    contenu: {
        type: DataTypes.TEXT
    },
},
    {
        sequelize,
        modelName: "Recettes",
        tableName: "Recettes",
    });

export default Recettes;
