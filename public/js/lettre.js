 // Cett fonction permet de filtrer les cartes en fonction de la lettre passée en paramètre à la fonction filterCards(). Les cartes qui ont un attribut data-letter correspondant à la lettre sélectionnée seront affichées (style display: block), tandis que les autres cartes seront masquées (style display: none).
 function filterCards(letter) {
    const cards = document.querySelectorAll('.cardAll'); // Trouver toutes les cards
    let hasVisibleCard = false;
    cards.forEach(card => {
        // On va chercher les elements qui ont data-letter dans leur html car data-letter stock la premiere lettre du titre grace a son code javascript
        const cardLetter = card.getAttribute('data-letter');
        // Ici cardLetter représente la lettre stockée dans l'attribut "data-letter" de la carte, tandis que "letter" est la lettre associée au bouton cliqué
        if (cardLetter === letter) {
            card.style.display = 'block'; // Afficher la carte si la lettre correspond
            hasVisibleCard = true;
        } else {
            card.style.display = 'none'; // Masquer la carte si la lettre ne correspond pas
        }
    });
}

// Cette fonction sélectionne tous les boutons avec la classe "letter" et ajoute la classe "letterSelecter" au bouton cliqué tout en supprimant cette classe des autres boutons
function toggleSelectedLetterClass(clickedButton) {
    const buttons = document.querySelectorAll('.letter'); // Trouver tous les boutons avec la classe "letter"
    
    buttons.forEach(button => {
        if (button === clickedButton) { 
            button.classList.add('letterSelected'); // Ajouter la classe "letterSelecter" au bouton cliqué
        } else {
            button.classList.remove('letterSelected'); // Supprimer la classe "letterSelecter" des autres boutons
        }
    });
}

// Appeler la fonction lors du chargement de la page car quand on click sur un bouton car la page se relance automatiquement
window.addEventListener('DOMContentLoaded', () => {
    const buttons = document.querySelectorAll('.letter'); // Trouver tous les boutons avec la classe "letter"
    //Cette méthode parcourt tous les boutons avec la classe "letter" et ajoute un écouteur d'événements 'click' à chacun d'entre eux   
    buttons.forEach(button => {
        button.addEventListener('click', () => {
            toggleSelectedLetterClass(button);
        });
    });
});