// ##############################################
// ############# addUserData.js ################
// ##############################################
//? Ce fichier est un middleware. Un middleware n'est rien d'autre qu'une étape !
//? Ce middleware effectue les instructions suivantes :
//* Est-ce que l'user est connecté ?
//*     - Si oui, on ajoute ses informations dans res.locals (une variable dans la requête qui sera accessible par nos vues)
//*     - Si non, on vide les données "isLogged" et "user" de res.locals pour s'assurer qu'il n'y ait pas d'erreur d'affichage dans nos vues

// --------------------------
//  Imports
// ------------------

// import { users } from '../controllers/authController.js';

// --------------------------
//  addUserData
// ------------------

function addUserData(req, res, next) {
  if (req.session.isLogged) {
    res.locals.isLogged = true;
    res.locals.user = req.session.user;
    // res.locals.user = users.find(element => element.email === req.session.user);  // On cherche dans la liste des users inscrits un element dont l'email est égal à l'user renseigné dans la session. Le résultat de ce "find" sera enregistré dans res.locals.user
  }
  else {
    res.locals.isLogged = false;
    res.locals.user = null;
  }
  next();     // Puisque ce middleware est une étape, une fois que le traitement a été effectué, on passe au middleware suivant !
}

export default addUserData;