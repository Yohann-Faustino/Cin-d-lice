import { Recettes, Utilisateurs } from '../models/index.js';
import bcrypt from 'bcrypt';
import User from '../models/Utilisateur.js';

const userController = {
    // Fonction pour afficher le profil de l'utilisateur
    profile:  async (req, res) => {
        try {
            // Récupérer les informations de l'utilisateur à partir de la session
            const user = req.session.user;
            if (!user) {
                return res.redirect('/login'); // Rediriger vers la page de connexion si l'utilisateur n'est pas connecté
            }

            // Récupérer les recettes likées par l'utilisateur
            const likedRecipes = await Utilisateurs.findByPk(user.id, {
                include: [{
                    model: Recettes,
                    as: 'recettes_fav'
                }]
            });

            // Extraire les recettes likées
            const liked_recipes = likedRecipes ? likedRecipes.recettes_fav : [];

            // Rendre la vue 'profile' avec un titre et les recettes likées
            res.render('profile', { titre: "Ciné Délice - Mon Profil", liked_recipes: liked_recipes });
        } catch (error) {
            console.error('Error fetching user profile:', error);
            res.status(500).render('500', { message: "Erreur lors de la récupération du profil utilisateur" });
        }
    

        // Récupérer les informations de l'utilisateur à partir de la session
        // res.locals.user = req.session.user;

        // Récupérer les recettes likées
        // - requête sequelize
        // const liked_recipes = await ...

        // Rendre la vue 'profile' avec un titre
        // et lui passer les recettes likées
        // res.render('profile', {titre: "Ciné Délice - Mon Profil", liked_recipes: liked_recipes});
        // res.render('profile', {titre: "Ciné Délice - Mon Profil"});
    },

    // Fonction pour mettre à jour le profil de l'utilisateur
    updateProfile: async (req, res) => {
        // Récupérer les informations de l'utilisateur à partir de la session
        // res.locals.user = req.session.user;

        // Récupérer les données mises à jour envoyées par le client
        const updatedUser = req.body;

        // Si l'utilisateur a fourni son mot de passe actuel
        if (updatedUser.actual_password) {
            // Vérifier si le mot de passe actuel fourni correspond au mot de passe stocké
            const result = bcrypt.compare(updatedUser.actual_password, req.session.user.mot_de_passe);

            // Si le mot de passe actuel est correct et que les nouveaux mots de passe correspondent
            if (result && updatedUser.new_password && updatedUser.confirmed_new_password && updatedUser.new_password === updatedUser.confirmed_new_password) {
                // Hacher le nouveau mot de passe
                const encrypted_new_password = await bcrypt.hash(updatedUser.new_password, 10);
                
                try {
                    // Mettre à jour l'utilisateur avec les nouvelles informations, y compris le mot de passe
                    const newUser = await User.update(
                        {
                            nom: updatedUser.nom,
                            prenom: updatedUser.prenom,
                            pseudo: updatedUser.pseudo,
                            email: updatedUser.email,
                            adresse: updatedUser.adresse,
                            ville: updatedUser.ville,
                            code_postal: updatedUser.code_postal,
                            birthdate: updatedUser.birthdate,
                            mot_de_passe: encrypted_new_password
                        },
                        {
                        where: {
                            id: req.session.user.id,
                        },
                        },
                    );

                    // Mettre à jour la session utilisateur avec les nouvelles informations
                    req.session.user = updatedUser;
                } catch (err) {
                    // En cas d'erreur, rendre la vue 'profile' avec un message d'erreur
                    res.render('profile', {titre: "Ciné Délice - Mon Profil", message: err});
                }
            } else {
                // Si les mots de passe ne correspondent pas ou sont incorrects, afficher un message d'erreur
                res.render('profile', {titre: "Ciné Délice - Mon Profil", message: "Identifiants invalides"});
            }
        } else {
            // Si aucun mot de passe actuel n'est fourni, mettre à jour seulement les autres informations

            try {
                const newUser = await User.update(
                    {
                        nom: updatedUser.nom,
                        prenom: updatedUser.prenom,
                        pseudo: updatedUser.pseudo,
                        email: updatedUser.email,
                        adresse: updatedUser.adresse,
                        ville: updatedUser.ville,
                        code_postal: updatedUser.code_postal,
                        birthdate: updatedUser.birthdate,
                    },
                    {
                    where: {
                        id: req.session.user.id,
                    },
                    },
                );

                // Mettre à jour la session utilisateur avec les nouvelles informations
                req.session.user = updatedUser;
                res.locals.user = req.session.user;

                // Afficher un message de succès
                res.render('profile', {titre: "Ciné Délice - Mon Profil", message: "Vos informations ont bien été mises à jour"});
            } catch (err) {
                // En cas d'erreur, rendre la vue 'profile' avec un message d'erreur
                res.render('profile', {titre: "Ciné Délice - Mon Profil", message: err});
            }
        }
    },

    // Fonction pour supprimer le profil de l'utilisateur
    deleteProfile: async (req, res) => {
        try {
            // Supprimer l'utilisateur de la base de données en utilisant l'ID stocké dans la session
            await User.destroy({
                where: {
                    id: req.user.id,
                },
            });
                
            // Rediriger l'utilisateur vers la page d'accueil après la suppression du profil
            res.redirect('/home');
        } catch (err) {
            // En cas d'erreur, envoyer un message d'erreur
            res.send("error => " + err);
        }
    }
}

export default userController;
