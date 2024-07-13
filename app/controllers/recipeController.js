
import { Recettes, Films, Ingredients, Utilisateurs } from '../models/index.js';

//Fonction pour gerer les routes liés au recettes
const recipe = {

    // Recuperations de toutes les recettes
    recette: async (req, res) => {
        try {

            //Recuperation de toute les recettes depuis la bdd
            const recipes = await Recettes.findAll();
           //Rendu de la vue recipes avec les recette recupere
            res.render('recipes', { titre: "Ciné Délice - Recettes", recipes: recipes });
        } catch (error) {
            console.error('Error fetching recipes:', error);
            res.status(404).render('404', { message: "Page non trouvée" });
        }
    },
    //recuperation d'une recette par son id
    recetteId: async (req, res) => {
        try {
           
            //recuperation d'une recette avec son id en incluant le film et les ingredients assoscies
            const recette = await Recettes.findByPk(req.params.id, {
                include: [
                    {
                        model: Films,
                        as: 'films',
                    },
                    {
                        model: Ingredients,
                        as: 'ingredients',
                    }
                ]
              });
              
            if (!recette) {
                return res.status(404).send("La recette n'a pas été trouvée");
            }
            // rendu de la vue recetteDetail avec la recette recupere
            res.render('recetteDetails', { titre: " Ciné Délice - Recette", recette: recette });
        } catch (error) {
            console.error('Error fetching recipe:', error);
            res.status(404).render('404', { message: "Page non trouvée" });
        }
    },

    toggleFavorite:  async (req, res) => {
        // console.log('ajout de la recette en favoris')
        // ton utilisateur c'est req.session.user.id ??
        // ta recette c'est req.params.id
        // vérifier si l'utilisateur a déjà mis en favoris cette recette
        // - faire la requette sequelize pour savoir
        // - voir bdd => utilisateur_aime_recettes
        // Si oui alors on la retire
        // - requête sequelize pour supprimer la liaison
        // Si non alors on l'ajoute
        // - requête sequelize pour ajouter la liaison
        try {
            const userId = req.session.user.id;
            const recetteId = req.params.id;

            // Vérifier si l'utilisateur a déjà ajouté cette recette aux favoris
            const favorite = await Utilisateurs.findOne({
                here: { id: userId },
                include: {
                    model: Recettes,
                    as: 'recettes_fav',
                    where: { id: recetteId }
                }
            });

            if (favorite) {
                // L'utilisateur a déjà cette recette en favoris, on la retire
                await favorite.removeRecettes_fav(recetteId);
                res.json({ message: 'Recette retirée des favoris' });
            } else {// L'utilisateur n'a pas cette recette en favoris, on l'ajoute
               
            
                                const user = await Utilisateurs.findByPk(userId);
                                await user.addRecettes_fav(recetteId);
                                res.json({ message: 'Recette ajoutée aux favoris' });
                            }
                        } catch (error) {
                            console.error('Error toggling favorite recipe:', error);
                            res.status(500).json({ message: "Erreur lors de l'ajout/retrait de la recette des favoris" });
                        }
                    }

    }

export default recipe;
