BEGIN;

-- Cette commande est utilisée pour définir l'encodage qui est défini sur UTF-8, qui est un encodage de caractères largement utilisé pour représenter du texte en informatique
SET CLIENT_ENCODING TO 'UTF-8';

TRUNCATE TABLE "Utilisateurs", "Ingredients" RESTART IDENTITY CASCADE;
-- TRUNCATE -> vide dabord la table
-- RESTART IDENTITY -> réinitialise les séquences pour les colonnes id dans les tables Utilisateurs et Ingredients à leur valeur initiale
-- CASCADE -> Vide également toutes les tables qui ont des clés étrangères référencées dans Utilisateurs et Ingredients

INSERT INTO "Utilisateurs" ("nom","email", "mot_de_passe") VALUES 
    ('Doe','john@example.com', 'Motdepasse123!'),
    ('Smith','jane@example.com', 'P@ssw0rd1234'),
    ('Johnson','mike@example.com', 'Securite@2023');

INSERT INTO "Ingredients" ("nom") VALUES 
('Sel'), ('Poivre'), ('Huile d''olive'), ('Tomate'), ('Courgette'), ('Aubergine'), ('Oignon'), ('Gousse d''ail'), (
'Herbe de provance'), ('Spaghetti'), ('Chair à saucisse'), ('Parmesan'), ('Chaplure'), ('Boeuf haché'),('Concentré de tomate'), ('Vin rouge'), ('Laurier'), ('Cube de bouillon'), ('Oeuf'), ('Chocolat'), ('Lait'), ('Créme liquide'), ('Sucre vanillé'), ('Farine'), ('Eau bouillante'), ('Porc haché'), ('Sauce soja'), ('Huilde de sesame'), ('féculle de maïs'), ('Poivre blanc'), ('Sucre'), ('Vignaigre de riz'), ('Gingembre'), ('Petite suisse'), ('Amande en poudre'), ('Pate amande'), ('Colorant'), ('Beurre'), ('Levurre chimique'), ('Citron'), ('Gousse de vanille'), ('Cassonade'), ('Vodka'), ('Martini'), ('Olive verte'), ('Moutrade'), ('Pain d''epice'), ('Lard fumé'), ('Bouquet garni'), ('Bierre brune (Pelforth brune)'), ('Levure Boulangére'), ('Pomme'), ('Jus de citron'), ('Maizena'), ('Quatre epice'), ('Cannelle'), ('Muscade'), ('Cidre'), ('Eau'), ('Tomate pelée'), ('Thym'), ('Gruyère rapé'), ('Feuille de lasagne'), ('Miel d''accacia'), ('Lard'), ('Aiguillette de canard'), ('Echalotte'), ('Persil'), ('Pate deuilllte'), ('Vin blanc'), ('Mascarponne'), ('Biscuit cuillere'), ('Café'), ('Cacao amer'), ('Pain à burger'), ('Steack haché'), ('Ananas'), ('Chedar'), ('Ketchup'), ('Sauce teriyaki'), ('Salade'), ('Oignon rouge'), ('Saucisse de Strasboug'), ('Pain a hot dog'), ('Bierre sans alcool'), ('Creme chantilly'), ('Epicce au choix'), ('Saveur desiré'), ('Chocolat noir'), ('Chocolat au lait'), ('Chamallows'), ('Dinde'), ('Champignon forestier'), ('Margarine'), ('Ciboulette'), ('Marrons'), ('Sucre glace'), ('Aromate'), ('Bouillon de legume'), ('Piment'), ('Fromage rapé'), ('Haricot rouge'), ('Chips nachos'), ('Creme epaisse'), ('Cuisse de canard'), ('Orange'), ('Jus  d''orange'), ('vinaigre alcool blanc'), ('Bouillon de vollail'), ('Pois chiche'), ('Menthe'), ('Coriandre'), ('Cardomome'), ('Cumin en  poudre'), ('Graine de sesame'), ('Poulet'), ('Paprika'), ('Haricot en conserve'), ('Purée de tomate'), ('Tabasco'), ('Bacon'), ('Tahin'), ('Creme fraiche'), ('Fromage blanc'), ('Faiselle'), ('Raisin sec'), ('Tranche pepperonni'), ('Mozzarella'), ('Basilic'), ('Pate a pizza'), ('Biscuit émiétté'), (' Graine de pavot'), ('Erythriol'), ('Farine de maïs'), ('Eau tiede'), ('Corriandre en poudre'), ('Corraindre fraiche'), ('Concombre'), ('Poivron vert'), ('Conté'), ('Riz carnoli'), ('Eau de vie'), ('Ail violet'), ('Strychrnine'), ('Morphine'), ('Petrol'), ('Ciguë'), ('Bave de sangsue'), ('Arsenic'), ('Narcotique'), ('Purgatif'), ('Sang de lezard'), ('Mort au rat'), ('Quartier orange'), ('Fruit confit'), ('vert de gris'), ('Vitriol'), ('crevettes decortiquées'),('Pain');

COMMIT;


