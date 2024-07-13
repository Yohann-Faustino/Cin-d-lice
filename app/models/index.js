
import Categorie from './Categorie.js'
import Recettes from './Recettes.js';
import Ingredients from "./Ingredients.js";
import Utilisateurs from "./Utilisateur.js";
import Films from './Films.js';
import Recettes_Ingredients from './Recettes_Ingredients.js';

//Un user peut aimer plusieurs recettes
Utilisateurs.belongsToMany(Recettes, {
    through:'utilisateur_aime_recettes',
    foreignKey:'utilisateur_id',
    otherKey:'recettes_id',
    as: "recettes_fav"
});

//Une recette peut être aimée par plusieurs users
Recettes.belongsToMany(Utilisateurs, {
    through:'utilisateur_aime_recettes',
    foreignKey:'recettes_id',
    otherKey:'utilisateur_id',
    as: "utilisateurs_fav"
});

//Un User peut commenter 0n recette
Utilisateurs.belongsToMany(Recettes, {
    through:'utilisateur_commente_recettes',
    foreignKey:'utilisateur_id',
    otherKey:'recettes_id',
    as: "recettes_comment"
});

//Une recette peut $etre commenter 0n fois
Recettes.belongsToMany(Utilisateurs, {
    through:'utilisateur_commente_recettes',
    foreignKey:'recettes_id',
    otherKey:'utilisateur_id',
    as: "utilisateurs_comment"
});

//Une recette peut contenir 0n ingredient
Recettes.belongsToMany(Ingredients, {
    through: Recettes_Ingredients,
    foreignKey:'recettes_id',
    otherKey:'ingredients_id',
    as: "ingredients"
});

//Un ingredient peut être 0n recette
Ingredients.belongsToMany(Recettes, {
    through: Recettes_Ingredients,
    foreignKey:'ingredients_id',
    otherKey:'recettes_id',
    as: "recettes"
});

//Une recette appartient a une catégorie ou a 0 
Recettes.belongsTo(Categorie, {foreignKey:'id_categorie', as:"categorie"});
//Une catégories posséde 0 a N recettes
Categorie.hasMany(Recettes, {foreignKey:'id_categorie', as:"recettes"});

//Une recette appartient a un film ou a 0 
Recettes.belongsTo(Films, {foreignKey:'id_films', as:'films'});
//Un film posséde 0 a N recettes
Films.hasMany(Recettes, {foreignKey:'id_films', as:'recettes'});

export { Utilisateurs, Recettes, Ingredients, Films, Categorie, Recettes_Ingredients };