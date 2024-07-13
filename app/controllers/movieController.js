
import { Films, Recettes } from "../models/index.js";

const movie = {

     // Méthode pour récupérer tous les films et les afficher
    
    film: async (req,res) => {
        try {
            // On récupere tous les films depuis la base de donnée 
            const movies = await Films.findAll();
            
            // Affichage de la page des films avec la liste des films
            res.render('movies', {titre: " Ciné Délice - Films", movies: movies});

            
        } catch (error) {
            console.error('Error fetching movies:', error);
            res.status(404).render('404', { message: "Page non trouvée" });
        }
    },
        // Métohde de recuperation et d'affichage d'un film via son id
    filmId: async (req, res) => {
        try {
            //récuperation du film par son id  avec sa ou ses recette(s) assoicée(s)
            const film = await Films.findByPk(req.params.id, { include: 'recettes' });
            if (!film){
                return res.status(404).send("Le film n'a pas été trouvé");
            }
            //Affichage de la page du film avec les informations du films
            res.render('movieDetails', { titre: " Ciné Délice - Films", film: film});
        } catch (error) {
            res.status(404).render('404', { message: "page non trouvée" });
        }
    }
}


export default movie;