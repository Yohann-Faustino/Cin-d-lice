// ##############################################
// ############# isLogged.js ################
// ##############################################
//? Ce fichier est un middleware. Un middleware n'est rien d'autre qu'une étape !
//! Un middleware est une fonction qui a accès à l'objet requête (req), à l'objet réponse (res), et à la prochaine fonction middleware dans le cycle de requête-réponse d'une application. Cette prochaine fonction est généralement désignée par une variable appelée next.
//? Ce middleware effectue les instructions suivantes :
//* Est-ce que l'user est connecté ?
//*     - Si oui, on passe au middleware suivant
//*     - Si non, on renvoie une page d'erreur, indiquant qu'il faut se connecter pour accéder à la ressource

// --------------------------
//  Imports
// ------------------

// --------------------------
//  addUserData
// ------------------
// Fonction middleware qui vérifie si l'utilisateur est connecté
function isLogged(req, res, next) {
  // Vérifie si la session contient une propriété 'isLogged' indiquant que l'utilisateur est connecté
    if (!req.session.isLogged) {
      // Si l'utilisateur n'est pas connecté, renvoie une réponse avec le statut 401 (Non autorisé)
        // et rend la vue 'error' avec un message indiquant qu'il doit se connecter
      res.status(401).render('error', {
        message: 'Vous n\'êtes pas autorisé à accéder à la page demandée.',
      });
    }
    else {
      // Si l'utilisateur est connecté, passe au middleware suivant
      next();
    }
  }
  // Exporter la fonction middleware pour qu'elle puisse être utilisée dans d'autres parties de l'application
  export default isLogged;