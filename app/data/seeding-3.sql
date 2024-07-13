BEGIN;

-- Cette commande est utilisée pour définir l'encodage qui est défini sur UTF-8, qui est un encodage de caractères largement utilisé pour représenter du texte en informatique
SET CLIENT_ENCODING TO 'UTF-8';

TRUNCATE TABLE "Recettes_Ingredients" RESTART IDENTITY CASCADE;
-- TRUNCATE -> vide dabord la table
-- RESTART IDENTITY -> réinitialise les séquences pour les colonnes id dans les tables Utilisateurs et Ingredients à leur valeur initiale
-- CASCADE -> Vide également toutes les tables qui ont des clés étrangères référencées dans Utilisateurs et Ingredients

INSERT INTO "Recettes_Ingredients" ("recettes_id","ingredients_id", "quantite") VALUES

('1', '1', '1 pincée'),
('1', '2', '1 pincée'),
('1', '3', '2 cuillères à soupe'),
('1', '4', '1'),
('1', '5', '2'),
('1', '6', '1'),
('1', '7', '1'),
('1', '8', '2'),
('1', '9', ' '), 

('2', '10', '400g'),
('2', '11', '200g'),
('2', '4', '1'),
('2', '7', '2'),
('2', '3', '2 cuillères à soupe'),
('2', '62', '1 branche'),
('2', '12', '75g'),
('2', '13', '20g'),
('2', '2', ' '),
('2', '14', '200g'),
('2', '15', '1 boite'),
('2', '16', '25cl'),
('2', '8', '2'),
('2', '17', '1 feuille'),
('2', '18', '1'),
('2', '19', '1'),
('2', '1', ' '),

('3', '20', '50g'),
('3', '21', '25cl'),
('3', '22', '25cl'),
('3', '23', '1 sachet'),

('4', '24', '300g'),
('4', '25', '180ml'),
('4', '1', '1/2 cuillére à café'),
('4', '26', '200g'),
('4', '159', '100g'),
('4', '7', '2'),
('4', '8', '1'),
('4', '27', '1 cuillère à soupe'),
('4', '28', '1 cuillère à soupe'),
('4', '29', '1 cuillère à café'),
('4', '1', '1/2 cuillère à café'),
('4', '30', '1/4 de cuillère à café'),
('4', '31', '1/4 de cuillère à café'),
('4', '27', '2 cuillères à soupe'),
('4', '32', '1 cuillère à soupe'),
('4', '28', '1 cuillère à café'),
('4', '31', '1/2 cuillère à café'),
('4', '33', '1/2 cuillère à café (facultatif)'),

('5', '20', '170g'),
('5', '34', '2'),
('5', '19', '2'),
('5', '31', '80g'),
('5', '35', '30g'),
('5', '36', ' '),
('5', '37', ' '),

('6', '38', '66.5g'),
('6', '39', '1/2 paquet'),
('6', '31', '133.5g'),
('6', '24', '133.5g'),
('6', '19', '2.5'),
('6', '40', '1'),
('6', '31', '13.5 morceaux'),
('6', '40', ' '),

('7', '41', '1'),
('7', '22', '50cl'),
('7', '19', '6 jaunes'),
('7', '31', '100g'),
('7', '42', '6 cuillères à soupe'),

('8', '43', '6cl'),
('8', '44', '1cl'),
('8', '45', '1'),
('8', '40', 'zest'),

('9', '46', '3 cuillères à soupe'),
('9', '1', ' '),
('9', '38', '30g'),
('9', '47', '5 tranches'),
('9', '48', '250g'),
('9', '7', '400g'),
('9', '49', '1kg'),
('9', '42', '1 cuillère à soupe'),
('9', '50', '1'),
('9', '51', '1 litre'),

('10', '24', '300g'),
('10', '19', '1'),
('10', '1', '1 pincée'),
('10', '31', '50g'),
('10', '23', '1 sachet'),
('10', '38', '10g'),
('10', '21', '50ml'),
('10', '39', '1/2 sachet'),

('11', '24', '430g'),
('11', '1', '1 pincée'),
('11', '38', '280g'),
('11', '31', '2 cuillères à soupe'),
('11', '53', '5 à 6'),
('11', '54', '2 cuillères à soupe'),
('11', '42', '150g'),
('11', '24', '2 cuillères à soupe'),
('11', '55', '2 cuillères à soupe'),
('11', '1', '1 pincée'),
('11', '56', '1/4 de cuillère à café'),
('11', '57', '1 cuillère à café'),
('11', '58', '1/4 de cuillère à café'),
('11', '59', '60ml'),
('11', '38', '30g'),
('11', '19', '1'),
('11', '60', '1 cuillère à soupe'),
('11', '31', ' '),

('12', '14', '350g'),
('12', '38', '50g'),
('12', '24', '50g'),
('12', '21', '60cl'),
('12', '61', '1 boite'),
('12', '17', '2 feuilles'),
('12', '62', '1 branche'),
('12', '7', '1'),
('12', '63', ' '),
('12', '64', '6 à 9'),
('12', '1', ' '),
('12', '2', ' '),

('13', '145', ' '),/******************* pudding arsenic *********************/
('13', '146', ' '),
('13', '147', ' '),
('13', '148', ' '),
('13', '149', ' '),
('13', '150', ' '),
('13', '151', ' '),
('13', '152', ' '),
('13', '153', ' '),
('13', '154', ' '),
('13', '155', ' '),
('13', '158', ' '),

('14', '38', '125g'),
('14', '31', '80g'),
('14', '65', '100g'),
('14', '19', '1'),
('14', '24', '300g'),
('14', '39', '1 cuillère à café'),
('14', '56', '1 à 2 cuillères à café'),

('15', '14', '400g'),
('15', '11', '400g'),
('15', '67', ' '),
('15', '66', '10 tranches'),
('15', '7', '1'),
('15', '8', '2'),
('15', '68', '2'),
('15', '69', ' '),
('15', '1', ' '),
('15', '2', ' '),
('15', '19', '2'),
('15', '70', '3'),
('15', '71', '1 verre'),

('16', '31', '75g'),
('16', '21', '25cl'),
('16', '19', '3'),
('16', '159', '6 tranches'),

('17', '19', '4'),
('17', '42', '100g'),
('17', '72', '250g'),
('17', '73', '16'),
('17', '74', '1'),
('17', '75', ' '),

('18', '90', '200g'),
('18', '38', '125g'),
('18', '24', '100g'),
('18', '39', '1 sachet'),
('18', '1', '1 pincée'),

('19', '76', '4'),
('19', '77', '4'),
('19', '78', '4 tranches'),
('19', '79', '4 tranches'),
('19', '80', ' '),
('19', '81', ' '),
('19', '82', '4 feuilles'),
('19', '4', '4 rondelles'),
('19', '83', '2'),
('19', '38', ' '),
('19', '1', ' '),
('19', '2', ' '),

('20', '84', '12'),
('20', '85', '12'),
('20', '7', '3'),
('20', '80', ' '),
('20', '46', ' '),
('20', '31', ' '),
('20', '1', ' '),
('20', '2', ' '),

('21', '86', '33cl'),
('21', '31', '1 cuillère à café'),
('21', '38', '1 grosse noisette'),
('21', '87', ' '),
('21', '88', ' '),

('22', '89', ' '),
('22', '20', '200g'),
('22', '60', '1 cuillère à soupe'),
('22', '105', '1 cuillère à soupe'),

('23', '90', '80g'),
('23', '91', '80g'),
('23', '92', '60g'),

('24', '93', '1'),
('24', '11', '750g'),
('24', '94', '2 pots'),
('24', '19', '3'),
('24', '95', ' '),
('24', '96', ' '),
('24', '7', '2'),
('24', '38', ' '),
('24', '1', ' '),
('24', '2', ' '),

('25', '31', '225'),
('25', '20', '150g'),
('25', '24', '125g'),
('25', '38', '70g'),
('25', '97', '50g'),
('25', '98', '50g'),
('25', '19', '6 jaunes'),
('25', '19', '3 blancs'),
('25', '21', '1/2 litre'),
('25', '97', '5 cuillères à soupe de crême'),

('26', '1', ' '),
('26', '2', ' '),
('26', '7', '2'),
('26', '101', ' '),
('26', '102', '300g'),
('26', '103', '250g'),
('26', '61', '400g'),
('26', '77', '300g'),
('26', '104', '200g'),
('26', '8', '2'),
('26', '105', '25cl'),
('26', '40', '1/2'),

('27', '31', '180g'),
('27', '38', '120g'),
('27', '24', '100g'),
('27', '75', '90g'),
('27', '19', '1'),
('27', '1', '1 pincée'),
('27', '38', '120g'),
('27', '98', '120g'),
('27', '41', '1 cuillère à café'),

('28', '106', '4'),
('28', '107', '1'),
('28', '7', '2'),
('28', '108', '3cl'),
('28', '31', '50g'),
('28', '109', '5cl'),
('28', '110', '1/2 litre'),
('28', '99', ' '),
('28', '1', '6 pincées'),
('28', '2', '6'),

('29', '1', '10g'),
('29', '31', '50g'),
('29', '52', '15g'),
('29', '38', '180g'),
('29', '24', '500g'),
('29', '21', '28cl'),
('29', '60', '2 cuillères à soupe'),
('29', '19', '1'),

('30', '111', '350g'),
('30', '7', '1'),
('30', '69', '1 botte'),
('30', '112', '5 brins'),
('30', '113', '1 botte'),
('30', '114', '1/2 cuillère à café'),
('30', '15', '1 cuillère à café'),
('30', '8', '2'),
('30', '1', '1 cuillère à café'),
('30', '2', ' '),
('30', '39', '1 sachet'),
('30', '24', '1.5 cuillère à soupe'),
('30', '116', '2 cuillères à soupe'),
('30', '3', '2 cuillère às soupe'),

('31', '117', '1'),
('31', '7', '1'),
('31', '8', '3'),
('31', '3', ' '),
('31', '18', ' '),
('31', '9', ' '),
('31', '1', ' '),
('31', '2', ' '),
('31', '17', '2 feuilles'),
('31', '110', '1 cube'),
('31', '60', '200ml'),

('32', '10', '400g'),
('32', '14', '150g'),
('32', '61', '800g'),
('32', '7', '2'),
('32', '8', '2'),
('32', '62', '2 branches'),
('32', '17', '1 feuille'),
('32', '3', '1 cuillère à soupe'),
('32', '31', '1 pincée'),
('32', '1', '1 pincée'),
('32', '2', '1 pincée'),

('33', '119', '400g'),
('33', '120', '1 bouteille'),
('33', '101', 'selon vos préférences'),
('33', '121', '2 gouttes'),
('33', '122', '80g'),
('33', '8', '1'),
('33', '7', '1/2'),
('33', '3', ' '),
('33', '1', ' '),
('33', '2', ' '),

('34', '38', '1 cuillère à soupe'),
('34', '41', '1 cuillère à café'),
('34', '31', '175g'),
('34', '58', '1/4 cuillère à café'),
('34', '1', '1/2 cuillère à café'),
('34', '39', '2 cuillères à café'),
('34', '24', '500g'),
('34', '57', '1/2 cuillère à café'),
('34', '19', '2'),
('34', '21', '15cl'),

('35', '111', '300g'),
('35', '123', '3 cuillères à soupe'),
('35', '40', '1/2'),
('35', '3', '3 cuillères à soupe'),
('35', '54', '1/2'),
('35', '115', '1 cuillère à soupe'),
('35', '1', ' '),
('35', '8', '2'),
('35', '28', ' '),

('36', '38', '30g'),
('36', '31', '175g'),
('36', '24', '4 cuillères à soupe'),
('36', '124', '10cl'),
('36', '125', '500g'),
('36', '126', '500g'),
('36', '23', '2 sachets'),
('36', '19', '4'),
('36', '54', '1'),
('36', '127', '100g'),

('37', '128', '150g'),
('37', '129', '2'),
('37', '4', '200g en purée'),
('37', '7', '1'),
('37', '8', '2'),
('37', '3', '1 cuillère à soupe'),
('37', '130', '1/2 botte'),
('37', '131', '1'),
('37', '1', '3 pincées'),
('37', '2', '3 pincées'),

('38', '58', '1/2 cuillère à café'),
('38', '38', '125g'),
('38', '132', '250g'),
('38', '40', '1 zest'),
('38', '124', '25cl'),
('38', '24', '2 cuillères à soupe'),
('38', '31', '150g'),
('38', '125', '500g'),

('39', '24', '150g'),
('39', '31', '75g'),
('39', '21', '4 cuillères à soupe'),
('39', '19', '1'),
('39', '39', '1/2 sachet'),
('39', '38', '50g'),
('39', '20', '100g'),
('39', '1', '1 pincée'),

('40', '133', '140g'),
('40', '60', '720ml'),
('40', '134', '1 cuillère à café'),
('40', '41', '1 cuillère à café'),

('41', '78', '8 rondelles'),
('41', '31', '150g'),
('41', '24', '150g'),
('41', '38', '150g'),
('41', '19', '3'),
('41', '39', '1 sachet'),
('41', '23', '1 sachet'),
('41', '31', '150g'),

('42', '135', '200g'),
('42', '24', '100g'),
('42', '136', '25cl'),
('42', '1', ' '),
('42', '77', '400g'),
('42', '7', '1/2'),
('42', '60', 'un peu'),
('42', '88', ' '),
('42', '137', ' '),
('42', '138', ' '),
('42', '1', ' '),
('42', '2', ' '),
('42', '4', '4'),
('42', '139', '1/2'),
('42', '140', '1/2'),
('42', '7', '1/4'),
('42', '88', ' '),
('42', '69', ' '),
('42', '8', '1'),
('42', '1', ' '),
('42', '4', '2'),
('42', '139', '1/2'),
('42', '7', '1/2'),
('42', '82', ' '),
('42', '124', ' '),
('42', '141', ' '),
('42', '1', ' '),

('43', '2', '1 pincée'),
('43', '1', '1 pincée'),
('43', '69', '2 brins'),
('43', '7', '1'),
('43', '100', '1'),
('43', '38', '1 noix'),
('43', '3', '1 filet'),
('43', '94', '250g'),
('43', '142', '200g'),
('43', '71', '20cl'),
('43', '12', '1 cuillère à soupe'),
('43', '8', '1'),
('43', '68', '1'),

('44', '24', '250g'),
('44', '31', '100g'),
('44', '95', '1/2 verre'),
('44', '3', '1/2 verre'),
('44', '75', '1 cuillère à café'),
('44', '57', '1 pincée'),
('44', '1', ' '),

('45', '143', '1 litre'),
('45', '68', '500g'),
('45', '144', '250g');





COMMIT;