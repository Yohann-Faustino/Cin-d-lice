// Voir explications sur la page models de categorie.js
import { Model, DataTypes } from "sequelize";

import sequelize from "../data/database.js";


class Ingredients extends Model { }

Ingredients.init({
    nom: {
        type: DataTypes.STRING,
        allowNull: false
    },

    
},
    {
        sequelize,
        modelName: "Ingredients",
        tableName: "Ingredients",
    });

export default Ingredients;
