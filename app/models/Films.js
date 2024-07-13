// Voir explications sur la page models de categorie.js
import { Model, DataTypes } from "sequelize";

import sequelize from "../data/database.js";

class Films extends Model { }

Films.init(
    {
        titre: {
            type: DataTypes.STRING,
            allowNull: false
        },

        editorial: {
            type: DataTypes.TEXT
        },
        urlimg: {
            type: DataTypes.TEXT
        },
        anecdote: {
            type: DataTypes.TEXT
        },
    },
    {
        sequelize,
        modelName: "Films",
        tableName: "Films",
    }
);

export default Films;
