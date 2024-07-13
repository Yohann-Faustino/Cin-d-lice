import express, { Router } from 'express';
import recipeController from './controllers/recipeController.js';
import authController from './controllers/authController.js';
import userController from './controllers/userController.js';
import mainController from './controllers/mainController.js';
import movieController from './controllers/movieController.js';
import { Utilisateurs, Recettes, Categorie, Films } from './models/index.js';
import isLogged from './middleware/isLogged.js';

const router = express.Router(); 




router.get('/', mainController.homePage);//Route pour la page d'accueil
router.get('/contact', mainController.contact)//Route pour la page contact
router.post('/contact', mainController.submitContact)//Route pour la page contact

router.get('/404',mainController.notFoundPage)//Route page 404
router.get('/mentionsLegales',mainController.mentionsLegales)//Route page mentions legales
router.get('/planSite',mainController.planSite) // Route pour le plan du site


router.get('/recettes',recipeController.recette); // Route pour récupérer les recettes 
router.get('/recettes/:id',recipeController.recetteId);//Route pour récupérer une recette avec son id
router.get('/recettes/:id/favorite',recipeController.toggleFavorite);//Route pour récupérer une recette avec son id

router.get('/films',movieController.film);//Route pour révupérer les films
router.get('/films/:id',movieController.filmId);//Route pour récupérer un film avec son id


router.get('/login', authController.login);//Route pour acceder a la connexion
router.post ('/login',authController.loginAction);//Route d'authentification
router.post ('/signup',authController.inscriptionAction);//Route d'authentificationzz

router.post('/forgotPassword',authController.forgot); // Route POST pour demander la réinitialisation du mot de passe
router.get('/forgotPassword',authController.token);// Route GET pour afficher le formulaire de réinitialisation de mot de passe
router.post ('/forgotPassword',authController.token2); // Route POST pour réinitialiser le mot de passe

router.get('/logout', authController.logout); //Route pour la  déconnection

router.get('/profile', isLogged, userController.profile);
router.post('/profile', userController.updateProfile);
router.delete('/profile',userController.deleteProfile);
export default router;







