// Sélection des éléments du DOM nécessaires pour le basculement entre connexion et inscription
const container = document.getElementById('container');
const loginButton = document.getElementById('login');
const signUpButton = document.getElementById('signUp');

// Ajout d'un écouteur d'événements au bouton d'inscription pour activer le panneau d'inscription
signUpButton.addEventListener('click', () => {
    container.classList.add('panel-active');
});

// Ajout d'un écouteur d'événements au bouton de connexion pour désactiver le panneau d'inscription
loginButton.addEventListener('click', () => {
    container.classList.remove('panel-active');
});

// Fonction pour fermer une alerte
function closeAlert() {
    // Sélectionne l'élément avec la classe 'alert' et le cache en modifiant son style
    document.querySelector('.alert').style.display = 'none';
}

// Fonction pour effectuer des requêtes HTTP (GET, POST, PATCH, DELETE)
function makeRequest(path, method, ...data) {
    let requestBody = {};

    // Si la méthode est PATCH, formater les données dans un objet requestBody
    if (method === "PATCH") {
        requestBody.id = data[0];
        requestBody.fName = data[1];
        requestBody.lName = data[2];
        requestBody.age = data[3];
        requestBody.occupation = data[4];
    }

    // Effectuer la requête fetch avec le chemin, la méthode et les en-têtes appropriés
    fetch(path, {
        method: method,
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(requestBody) // Convertir le corps de la requête en JSON
    })
    .then(async (data) => {
        // Attendre la réponse et la convertir en JSON
        const result = await data.json();
        // Rediriger l'utilisateur vers l'URL spécifiée dans la réponse
        window.location.href = result.redirect;
    })
    .catch(async (err) => {
        // Gérer les erreurs éventuelles en convertissant la réponse en JSON
        const result = await err.json();
        // Rediriger l'utilisateur vers l'URL spécifiée en cas d'erreur
        window.location.href = result.redirect;
        // Afficher une alerte en cas d'erreur serveur interne
        alert("Internal server error");
        // Loguer le message d'erreur dans la console pour le debug
        console.log(result.message);
    });}
//btn-like
    document.getElementById('likeButton').addEventListener('click', function() {
        this.classList.toggle('liked');
        if (this.classList.contains('liked')) {
            // Ajoutez ici le code pour mettre ce like dans vos favoris
            console.log('Ajouté aux favoris');
        } else {
            // Ajoutez ici le code pour enlever ce like de vos favoris
            console.log('Retiré des favoris');
        }
    });