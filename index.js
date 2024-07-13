import express from 'express';                                 // On importe express dans une variable nommée express
import * as dotenv from 'dotenv';                                 // "J'importe tout depuis le module dotenv, et je stocke ça dans une variable qui s'appelle dotenv"
import session from 'express-session';                            // On importe le module express-session
import cors from 'cors';                                           // On importe le module cors



import router from './app/router.js';                             // On importe notre routeur
import mainController from './app/controllers/mainController.js'; // On importe notre controleur principal, qui contient une méthode qui sera utilisée pour afficher la page 404 (showNotFoundPage)
import addUserData from './app/middleware/addUserData.js';        // Ce module "fait-maison" servira à ajouter les informations d'un utilisateur connecté dans les locals, une variable accessible par nos vues


// --------------------------
//  Config
// ------------------

dotenv.config();                                                  // On charge nos variables environnement stockées dans le fichier .env

const port = process.env.PORT || 3000;                            // On définit un port pour notre serveur
const app = express();                                            // On créé notre application en exécutant la fonction express

app.set("view engine", "ejs");                                    // On indique à notre application express qu'on va utiliser un moteur de template, en l'occurence EJS
app.set("views", "./app/views");                                  // On lui indique où seront rangées nos views 


// --------------------------
//  Middlewares
// ------------------
//? Un middleware n'est rien d'autre qu'une étape ! La requête passe successivement dans chaque étape pour construire la réponse, jusqu'à l'envoi d'une réponse !

app.use(cors());                                               // Ajout du middleware cors
                                                                  
app.use(session({                                                 // Toutes les requêtes passeront par ce premier middleware (un middleware n'est rien d'autre qu'une étape). Ce MW va rajouter une propriété "session" à toutes les requêtes passant dans le serveur 
    resave: true,
    saveUninitialized: true,
    secret: process.env.SECRET,                                     // On va chercher le SECRET dans les variables environnement
  }));
  
  app.use(express.urlencoded({ extended: true }));                  // On fournit à notre serveur un outil permettant d'analyser (to parse) les requêtes de type POST
  
  app.use(express.static('./public'));      // On met à disposition de chaque requête le dossier contenant les ressources statiques
  
  app.use(addUserData);                                             // Ici, on applique cette étape à chaque requete. Si l'utilisateur est connecté, on ajoutera son email dans res.locals (ce qui permettra aux vues appelées par notre routeur de savoir qu'un utilisateur est connecté ou non)
  app.use(router);                                                  // El famoso notre routeur, le fameux outil qui permet d'aiguiller les requêtes vers les bonnes routes
  
  app.use(mainController.notFoundPage);                             // Le dernier middleware ici se déclenchera si une requête ne matche avec aucune route, et affichera une page 404
  
  
  app.listen(port, () => {                                          // On demande à notre serveur de se mettre à écouter les requêtes entrantes sur le port choisi
    console.log(`Serveur sur http://localhost:${port}/`);
  });