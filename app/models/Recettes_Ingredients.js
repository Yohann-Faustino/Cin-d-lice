// Voir explications sur la page models de categorie.js
import { Model, DataTypes } from "sequelize";

import sequelize from "../data/database.js";


class Recettes_Ingredients extends Model { }

Recettes_Ingredients.init({
    quantite: {
        type: DataTypes.TEXT,
        allowNull: false
    },
},
    {
        sequelize,
        modelName: "Recettes_Ingredients",
        tableName: "Recettes_Ingredients",
    });

export default Recettes_Ingredients;
