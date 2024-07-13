// Voir explications sur la page models de categorie.js
import { Model, DataTypes } from "sequelize";

import sequelize from "../data/database.js";

class Utilisateur extends Model {}

Utilisateur.init({
    adresse: {
        type: DataTypes.STRING,
        allowNull: true, 
    },
    ville: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    code_postal: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    prenom: {
        type: DataTypes.STRING,
        allowNull: false
    },
    nom: {
        type: DataTypes.STRING,
        allowNull: false
    },
    pseudo: {
        type: DataTypes.STRING,
        allowNull:false,
    },
    email: {
        type: DataTypes.TEXT,
        allowNull: false,
        unique: true,
    },
    mot_de_passe: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    // birthdate: {
    //     type: DataTypes.DATE,
    //     allowNull: true
    // }
    // avatar: {
    //     type: DataTypes.TEXT,
    //     allowNull: false
    // }
}, {
    sequelize,
    modelName: "Utilisateurs",
    tableName: "Utilisateurs",
});

export default Utilisateur;