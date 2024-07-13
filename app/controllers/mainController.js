


const mainController = {

    //Methode pour afficher la page 404
    notFoundPage: (req,res)=>{
        res.render("404",{message: "La page delandée n'existe pas"}) 
    },

    // Methode pour afficher la page d'accueil
    homePage: (req,res)=>{
        res.render('home', {titre: " Ciné Délice - Accueil"} ) 
    
    },

    // Méthode pour afficher la page de contact
    contact: (req,res)=>{
        res.render( "contact", {titre: " Ciné Délice - Contact"});
    },

    // Méthode pour gérer la soumission du formulaire de contact
    // elle rend à nouveau la page de contact
    submitContact: (req,res)=>{                                  
        res.render( "contact", {titre: " Ciné Délice - Contact"});   
    },

     // Méthode pour afficher la page des mentions légales
    mentionsLegales: (req,res)=>{
        res.render( "mentionsLegales", {titre: " Ciné Délice - Mentions légales"});
    },
    // Méthode pour afficher la page Plan du site 
    planSite:(req,res)=>{
        res.render("PlanSite", {titre: " Ciné Délice -Plan du Site"})
    },

     // Méthode pour afficher les détails d'un film
    moovieDetails: (req,res)=>{
        res.render( "movieDetails", {titre: " Ciné Délice - Films"});
    },

     // Méthode pour afficher les détails d'une recette
    recetteDetails: (req,res)=>{
        res.render( "recetteDetails", {titre: " Ciné Délice - Recette"});
    }
    

}
export default mainController;