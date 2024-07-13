BEGIN;

-- Cette commande est utilisée pour définir l'encodage qui est défini sur UTF-8, qui est un encodage de caractères largement utilisé pour représenter du texte en informatique
SET CLIENT_ENCODING TO 'UTF-8';

TRUNCATE TABLE "Recettes","Films" RESTART IDENTITY CASCADE;
-- TRUNCATE -> vide dabord la table
-- RESTART IDENTITY -> réinitialise les séquences pour les colonnes id dans les tables Utilisateurs et Ingredients à leur valeur initiale
-- CASCADE -> Vide également toutes les tables qui ont des clés étrangères référencées dans Utilisateurs et Ingredients

INSERT INTO "Films" ("titre", "editorial", "urlimg", "anecdote") VALUES
    
('Ratatouille', 'Rémy, un jeune rat, vit dans la campagne française en périphérie de Paris avec son père, Django, son frère, Émile, et un clan de rats, dans le grenier de la maison d''une vieille dame à la retraite. Contrairement aux membres de sa famille, Rémy est un grand admirateur de la cuisine française. Grâce à son odorat très fin, le jeune rat connaît instinctivement les ingrédients à ajouter aux plats pour les rendre meilleurs et plus subtils. C''est pourquoi il se rend furtivement le soir dans la cuisine pour lire un livre de recettes du chef cuisinier étoilé Auguste Gusteau, mort récemment après la perte d''une de ses étoiles à cause d''un critique culinaire, Anton Ego, qui s''opposait à l''idée fondamentale de Gusteau selon laquelle « tout le monde peut cuisiner ».','/film-img/ratatouille.webp', 'Pendant la préparation du film, l''équipe de Pixar a ainsi pris près de 4 500 clichés de la capitale pour servir de référence. Ils se sont également rendus dans les égouts, sur les bords du canal Saint-Martin, en haut de la Samaritaine, au sommet de la Tour Eiffel et ont également parcouru les rues de la ville en moto.'),

('La belle et le clochard', 'Jim Chéri (Dear dans la version originale) et sa femme, Darling, vivent dans une maison d''une petite ville tranquille de la Nouvelle-Angleterre. Une nuit de Noël, Jim offre une jeune chienne Cocker Spaniel Américain à sa femme qui la baptise Lady. Jim cherche à éduquer le chiot, mais ses pleurs et sa persévérance font que Lady arrive à dormir au pied du lit de ses maîtres, ce qui devient une habitude. À l''âge de six mois, elle reçoit un collier avec une plaque gravée. Le voisinage comprend plusieurs autres chiens, Jock, un terrier écossais, et César, un vieux limier de Saint-Hubert, ce dernier ayant, selon Jock, perdu son odorat. Un peu plus loin, un chien errant surnommé « Clochard », passe son temps à chercher à manger dans les échoppes et à aider ses amis attrapés par la fourrière.', '/film-img/la_belle_et_le_clochard.webp', 'Inspirés par de vrais animaux. Comme pour Bambi, les animateurs se sont inspirés de vrais animaux pour donner vie aux personnages du film. Le chien qui a servi de modèle à Clochard a été recueilli à la fourrière par le scénariste Ed Penner, qui s''est aperçu plus tard qu''il s''agissait d''une femelle.'),

('Pôle express', 'Un jeune garçon qui commence à douter de l’existence du Père Noël, monte dans un train mystérieux et part en direction du pôle Nord. Plus le Pôle express avance dans des contrées enchantées, plus l’aventure s''intensifie et les petits passagers prennent conscience de l’étendue de leurs dons.', '/film-img/pole_express.webp', 'La motion capture à la rescousse
Pour restituer l''ampleur des paysages imaginés par Chris Van Allsburg (avec leur texture très lumineuse) ainsi que la beauté et la richesse de ses illustrations, ni l''animation traditionnelle, ni des prises de vues réelles n''étaient suffisantes. Robert Zemeckis et le superviseur des effets spéciaux Ken Ralston, qui avaient déjà collaborés ensemble sur Retour vers le futur, décidèrent ainsi de recourir à la technique de la "Performance Capture". Avancée décisive dans la technologie du "motion capture", ce procédé permet de recréer à la perfection les expressions et les gestes des comédiens en infographie. Ainsi, les postures de Tom Hanks, le moindre de ses rictus sont reproduits à l''identiques à l''écran.'),


('Kung fu panda', 'Po est un jeune panda qui travaille comme serveur au restaurant sous les ordres de San Ping, son père adoptif. Il est aussi un fan des arts martiaux et idolâtre les Cinq Cyclones, cinq combattants de kung-fu qui protègent la vallée de la Paix, où il vit. Son rêve est de devenir un maître de l''art martial, malgré sa carrure.', '/film-img/Kung_fu_Panda.webp', ' Au total, Kung Fu Panda a nécessité 857 680 heures de travail de la part de 448 personnes différentes, incluant les acteurs.
 Afin d’encourager les équipes d’animateurs, la production leur distribuait un biscuit de fortune dès qu’une scène était terminée. Et oui, le message à l’intérieur des biscuits était personnalisé.
La vallée de la Paix comporte 1 478 villageois différents et aucun n’est humain. Kung Fu Panda est d’ailleurs le deuxième long métrage de Dreamworks, après Gang de requins sorti en 2004 – qui comptait aussi Jack Black et Angelina Jolie au doublage –, à ne pas montrer d’humains.'),

('Charlie et la chocolaterie', 'Charlie Bucket vit pauvrement dans une toute petite maison avec ses parents et ses quatre grands-parents cloués au lit, dont grand-papa Joe qui va l''accompagner à la chocolaterie. Charlie est un enfant gentil, attentionné et soigneux qui aime sa famille malgré leurs difficultés communes. Hors sa famille, la chose qu''il aime le plus est le chocolat. À cause de sa pauvreté extrême, il ne peut toutefois recevoir qu''une tablette de chocolat par an, à l''occasion de son anniversaire.', '/film-img/charlie_et_la_chocolaterie.webp', 'La majorité des barres chocolatées étaient faites en bois
Cela permettait d’éviter que les acteurs ne se goinfrent durant le tournage. Maintenant que l''on sait cela, on n''est plus certaines de vouloir être un des enfants de la chocolaterie.'),


('Game of thrones', 'Sur le continent de Westeros, le roi Robert Baratheon gouverne le Royaume des Sept Couronnes depuis plus de dix-sept ans, à la suite de la rébellion qu''il a menée contre le « roi fou » Aerys II Targaryen. Jon Arryn, époux de la sœur de Lady Catelyn Stark, Lady Arryn, son guide et principal conseiller, vient de s''éteindre, et le roi part alors dans le nord du royaume demander à son vieil ami Eddard « Ned » Stark de remplacer leur regretté mentor au poste de Main du roi. Ned, seigneur suzerain du nord depuis Winterfell et de la maison Stark, est peu désireux de quitter ses terres. Mais il accepte à contrecœur de partir pour la capitale Port-Réal avec ses deux filles, Sansa et Arya. Juste avant leur départ pour le sud, Bran, l''un des jeunes fils d''Eddard, est poussé de l''une des tours de Winterfell après avoir été témoin de la liaison incestueuse entre la reine Cersei Baratheon et son frère jumeau, Jaime Lannister. Leur frère, Tyrion Lannister, surnommé « le gnome », est alors accusé du crime par Lady Catelyn Stark.', '/film-img/game_of_thrones.webp', 'Game of Thrones est la série la plus piratée de tous les temps'),


('Le fabuleux destin d''Amélie Poulain', 'Amélie Poulain grandit isolée des autres enfants car son père, docteur taciturne, lui diagnostique à tort une maladie cardiaque : son père ne la touchait jamais en dehors des examens médicaux, d''où l''emballement de son pouls lorsqu''il le mesurait. Sa mère, tout aussi névrosée que son père est inhibé, meurt alors qu''Amélie est encore jeune, heurtée accidentellement par une touriste québécoise qui avait résolu de se suicider en se jetant du haut de la cathédrale Notre-Dame de Paris. Son père se renferme alors davantage et dévoue sa vie à la construction maniaque d''un mausolée consacré à sa défunte épouse. Livrée à elle-même, Amélie développe une imagination étonnamment riche.', '/film-img/le_fabuleux_destin_dameli_poulain.webp', 'Amélie Poulain aime faire des ricochets sur le canal Saint-Martin. Malheureusement, Audrey Tautou, elle, en est incapable. Les images des cailloux du film sont donc des images de synthèse.'),

('James Bond', 'L''agent secret britannique James Bond tente de déjouer les plans diaboliques d''un savant fou mégalomane nommé docteur No qui menace la paix mondiale en voulant faire exploser les fusées spatiales américaines et ainsi détruire le programme spatial des États-Unis.', '/film-img/james_bond.webp', ' James Bond 007 contre Dr. No (1962)
Ursula Andress, la première James Bond girl de l''histoire, a été choisie par le directeur de casting sans même avoir passé d''audition. Deux semaines avant le début du tournage, l''équipe du film n''avait toujours pas attribué le rôle de Honey Rider. Selon les rumeurs, c''est en tombant sur un cliché légèrement vêtue d''Ursula Andress que les producteurs décidèrent de lui proposer ce rôle qui a transformé l''actrice en véritable star interplanétaire. Et la scène où on l''aperçoit sortir de l''eau habillée d''un bikini immaculé y est évidemment pour quelque chose.'),


('Bienvenue chez les ch''tis','Philippe et Julie ne connaissent le Nord qu''à travers les clichés et stéréotypes convenus. Le grand-oncle de Julie, qui, enfant, a vécu dans cette région, la décrit comme une contrée inhospitalière, où règnent un froid polaire et des conditions de vie miséreuses. Philippe quitte le Sud la mort dans l''âme, avec de nombreux a priori négatifs à l''esprit. Ses premiers instants dans le Nord-Pas-de-Calais lui font croire que ces clichés sont bel et bien réels : des trombes d''eau s''abattent sur sa voiture, lorsqu''il franchit le panneau autoroutier indiquant l''entrée dans la région. Dès son frappant premier contact avec Antoine Bailleul, l''un des préposés du bureau, auquel il a été affecté, il a des difficultés à le comprendre, du fait de son accent et des expressions picardes qu''il utilise. Antoine l''héberge provisoirement chez sa mère, envahissante et autoritaire, avec qui il vit. Cependant, après quelques jours, Philippe apprend à connaître ses autres collègues : Annabelle, Fabrice et Yann. Il finit par se lier d''amitié avec Antoine, découvrant finalement une région très hospitalière, de même que la chaleureuse générosité et bonhomie des autochtones.', '/film-img/bienvenue_chez_les_chtis.webp', 'Selon Pathé, près de 2 millions de spectateurs ont vu le film dans le Nord ou le Pas-de-Calais (1 957 000 entrées), soit à près de la moitié de la population de l''ancienne région.'),


('La princesse et la grenouille', 'Une serveuse, désespérée de réaliser son rêve d''avoir son propre restaurant, se lance dans une aventure pour faire redevenir humain un prince transformé en grenouille, mais elle doit faire face au même problème après l''avoir embrassé.', '/film-img/La_princesse_et_la_grenouille.webp', 'Dans l''histoire originale, la princesse portait le nom de Maddy, ce qui est phonétiquement proche de Mammy, un patronyme péjoratif pour les afro-américains. Les créateurs lui ont donc choisie le nom de Tiana et ont fait d''elle une serveuse et non la femme de chambre d''un aristocrate de la Nouvelle-Orléans'),



('American pie', 'L''année scolaire se termine au lycée de Great Falls. Désespéré depuis que ses parents l''ont surpris dans une situation plus que gênante devant un film X, Jim, élève de terminale, scelle un pacte avec sa bande de copains : finis les plaisirs solitaires, ils seront tous des hommes avant d''entrer à la fac. Il leur reste donc trois semaines pour utiliser toutes les techniques possibles de séduction.', '/film-img/American_pie.jpg','Dans American Pie, le frère de Stifler doit avoir environ 11 ans, il se passe seulement 1 an après le 1. Dans le 2, le frère de Stifler semble avoir 14-15 ans.' ),


('Garfield', 'Les aventures de Garfield, le chat le plus paresseux de la Terre et de Jon, son maître simplet mais sympathique. Le matou sarcastique va devoir apprendre à partager sa vie bien tranquille avec un nouveau colocataire, le chien fou Odie. D''abord excédé, il se révèlera par la suite responsable et héroïque.', '/film-img/Garfield.webp', 'Quelques petites différences notables entre la BD et le film. Dans le film, Jon recueille Odie à la SPA alors que dans la BD, Odie appartient originellement à Lyman, un ami de Jon. Autre différence, dans le film, Nermal est un des chat qui vit dans le cul-de-sac. Dans la BD, Nermal appartient aux parents de Jon'),



('Asterix et Cléopatre', 'Pour impressionner Jules César, Cléopâtre parie avec lui qu''elle parviendra à faire construire, en trois mois seulement, le plus beau palais qu''il ait jamais visité. Elle confie cette importante tâche à l''architecte Numérobis, qui se désespère: s''il échoue, il sera jeté aux crocodiles. Dans un éclair de génie, Numérobis repense alors à ce druide gaulois, qui détient le secret bien gardé d''une potion magique.', 'https://www.youtube.com/embed/qOTQ9NJXAvE?si=bYF8gtCmZDH0WoEO', 'Le film a mobilisé 500 ouvriers pour les décors marocains, 2 000 figurants, plus de 11 kilomètres de tissus pour les costumes, 5 000 sandales, une douzaine de perruques pour Monica Bellucci et 1 500 pour les autres rôles.' ),

('Edward aux mains d''argent', 'Dans un château niché au sommet d''une colline vivait un génial inventeur qui créa Edward. Bien que gratifié d''un charme irrésistible, ce dernier n''était pas tout à fait parfait. La mort soudaine de l''inventeur l''avait laissé pourvu de ciseaux acérés en guise de mains. Edward vivait reclus dans l''obscurité jusqu''au jour où la douce demoiselle Avon lui fit goûter aux joies d''un véritable foyer.', '/film-img/Edouard_au_main_dargent.webp', 'L''une des premières conditions imposées à Johnny Depp lorsqu’il a accepté le rôle était... Un régime drastique. Pour rentrer dans sa combinaison, l’acteur a perdu près de 12 kilos. '),

('Downton Abbey', 'La vie de la famille Crawley et de ses serviteurs dans un manoir de la campagne anglaise à l''orée du XXe siècle. Anna et M. Bates sont à présent devenus des parents et la famille Crawley se prépare à recevoir la visite du roi George V et de la reine Mary. Carson, le majordome en chef, est également de retour.', '/film-img/Downton_Abbey.png','Les vêtements portés par les acteurs sont tout simplement magnifiques. Chaque pièce est un chef-d''oeuvre et colle le mieux possible à la réalité de l''époque. Un beau travail, qui implique cependant une contrainte: certaines pièces ne pouvaient pas être lavées.
Pour éviter que les odeurs de transpiration ne persistent, l''équipe responsable des costumes a cousu des morceaux de tissu sous les aisselles. Ces patchs étaient détachables et eux, pouvaient être lavés!' ),

('Les délices de Tokyo', 'Dans une échoppe en plein coeur de Tokyo, Sentaro fabrique et vend des dorayakis, des pâtisseries traditionnelles japonaises constituées de deux pancakes fourrés d''une pâte de haricots rouges confits. Son commerce vivote, ayant pour principales clientes les lycéennes du quartier mais Sentaro cherche néanmoins une cuisinière pour le seconder. Un jour, Tokue, une dame de 76 ans, se présente, intéressée par le poste.', '/film-img/delice_de_tokyo.png','Naomi Kawase rêvait de travailler avec Masatoshi Nagase et celui-ci accepta finalement d''endosser le rôle de Sentaro. Enfin, le personnage de Wakana mit du temps à trouver son interprète avant d''être attribué à Kyara Uchida, petite-fille à la ville de Kiki Kirin.' ),

('Le diable s''habille en Prada', 'Son diplôme de journalisme en poche, Andrea débarque à New York où elle décroche un premier emploi en tant qu''assistante de la rédactrice en chef d''un prestigieux magazine de mode. Un job de rêve. En apparence seulement car sa boss est en réalité un monstre tyrannique et caractériel ; Andrea, qui envisage son nouveau travail comme un tremplin vers une illustre carrière de journaliste, décide d''endurer les sévices de sa diablesse de patronne.' , '/film-img/le_diable_sh_abille_en_prada.png', 'Si de nombreuses marques ont catégoriquement refusé d’apparaître dans ce film pour ne pas déplaire à l''éditrice américaine, d’autres ont fait le choix d''une confiance aveugle en Patricia Field, la costumière. Chanel, Marc Jacobs, Calvin Klein, Valentino, oui oui, les tenues portées par nos chères Andy, Miranda et Emily sont des vraies et pas du touuuut des répliques. Avec un coût total de presque 1 million de dollars.'),

('Matilda','À l''âge de cinq ans, Matilda sait lire et a dévoré tout les classiques de littérature. Pourtant, son existence est loin d''être facile, entre une mère indifférente, abrutie par la télévision et un père d''une franche malhonnêteté… Sans oublier Mlle Legourdin, la directrice de l''école, qui déteste les enfants…', '/film-img/mathilda.webp', 'Jouer avec des enfants n''est pas chose aussi aisée qu’avec des adultes. Pour garantir que leurs réactions soient authentiques, Pam Ferris a limité autant que possibles les contacts avec les jeunes acteurs en dehors de leurs scènes. De cette manière, ils ne la voyaient pas autrement que comme la méchante Mlle Legourdin, et leur frayeur envers elle pouvait être bien réelle.'),

('Pulp fiction', 'L''odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s''entremêlent. Dans un restaurant, un couple de jeunes braqueurs, Pumpkin et Yolanda, discutent des risques que comporte leur activité. Deux truands, Jules Winnfield et son ami Vincent Vega, qui revient d''Amsterdam, ont pour mission de récupérer une mallette au contenu mystérieux et de la rapporter à Marsellus Wallace.', '/film-img/pulp_fiction.png','Plusieurs acteurs d’envergure n’ont pas été retenus.

Sylvester Stallone et Mat Dillon ont ainsi auditionné pour le rôle de Butch, tandis que Daniel Day-Lewis et Bruce Willis souhaitaient jouer Vincent Vega. Halle Berry s’est montrée elle intéressée par Mia Wallace.

Pam Grier est venue faire des essais pour le rôle de Jody. Bien que fan au dernier degré de l’égérie seventies, il lui a préférée Rosanna Arquette au motif qu’il l’admirait trop pour la voir se faire rabaisser à l’écran. Il lui promit cependant de lui écrire un rôle dans son prochain film….' ),

('Forest Gump', 'Sur un banc, à Savannah, en Géorgie, Forrest Gump attend le bus. Comme celui-ci tarde à venir, le jeune homme raconte sa vie à ses compagnons d''ennui. A priori, ses capacités intellectuelles plutôt limitées ne le destinaient pas à de grandes choses. Qu''importe. Forrest Gump, sans jamais rien y comprendre, s''associa à tous les grands événements de l''Histoire de son pays.','/film-img/forest_gump.webp','Après le succès de Forrest Gump, Gary Sinise a fondé un groupe de rock dans les années 2000, appelé The Lt. Dan Band. Le groupe, qui s’adresse principalement aux militaires, a joué dans plusieurs pays du monde, souvent dans des bases militaires et pour des œuvres de charité dédiées aux vétérans.' ),

('Harry Potter', 'L''histoire raconte la jeunesse de Harry Potter, sorcier orphelin élevé sans affection ni considération par la seule famille vivante qui lui reste : son oncle et sa tante moldus (sans pouvoirs magiques).
Le garçon découvre son identité de sorcier, son héritage tragique et la responsabilité qui lui revient.

Harry est considéré comme « le survivant » depuis que ses parents Lily Evans et James Potter ont été assassinés.
Le puissant mage noir Lord Voldemort les a tués dix ans plus tôt alors que Harry, qui n''était alors qu''un bébé, est parvenu à échapper de manière très inattendue au sortilège de la mort.
La tentative de meurtre était motivée par une prophétie annonçant à première vue que Harry anéantirait un jour les pouvoirs de Voldemort.
Cependant, le sortilège lancé par Voldemort sur l''enfant se retourne inexplicablement contre son lanceur et le désintègre, laissant le garçon intact avec pour seule trace de cet événement une cicatrice en forme d''éclair sur le front.
Le garçon devient par conséquent très célèbre parmi les sorciers, tandis qu''il demeure ordinaire chez les Moldus.

Chacun des romans se déroule pendant une année scolaire, tout au long de la jeunesse de Harry. Durant ces sept ans, le jeune sorcier, accompagné de ses deux loyaux amis Ron Weasley et Hermione Granger, va notamment assister au retour de Voldemort8 et à sa seconde ascension vers le pouvoir, et le combattre jusqu''à l''affrontement final du septième ', '/film-img/harry_potter.webp', 'L''actrice irlandaise Evanna Lynch interprète ce rôle de jeune fille un peu étrange (Luna Loovegood), mais l''histoire derrière le casting est particulière. En effet, la jeune fille était, quelques années avant, dangereusement anorexique. Elle trouve espoir dans une lettre de J.K. Rowling, qui lui dit que si elle bat la maladie, elle pourra postuler pour le rôle et qu''elle aurait des conseils uniques.

Elle s''impose face à 15 000 autres postulantes, notamment grâce à des bijoux mentionnés dans les livres que l''actrice a recréé à la main.'),

('Le père noël est une ordure', 'Le soir de Noël, dans un petit appartement qui leur sert de local, Pierre et Thérèse s''apprêtent à assurer la permanence de SOS-détresse-amitié. Ils reçoivent la visite de Josette, une jeune clocharde qui vient de quitter son ami Félix. Ce dernier, déguisé en père Noël, surgit dans l''appartement et cherche à étrangler Josette. La soirée s''annonce agitée', '/film-img/LE_pere_noel_est_une_ordure.webp', 'Initialement, le titre du film devait être "Le Père Noël s''est tiré une balle dans le cul"' ),

('Malcolm', 'Petit génie malgré lui, Malcolm vit dans une famille hors du commun. Le jeune surdoué n''hésite pas à se servir de son intelligence pour faire les 400 coups avec ses frères. Et les parents tentent tant bien que mal de canaliser l''énergie de ces petits démons.', '/film-img/Malcom.webp', 'La série a été créée par Linwood Boomer, qui s’est basé sur sa propre histoire pour le personnage de Malcolm. Comme ce dernier, il vient d’une fratrie de quatre garçons, il a un quotient intellectuel hors-normes et sa mère avait pour habitude de raser le torse de son père à table'),

('À nous quatre', 'Hallie et Annie se rencontrent dans un camp de vacances. Se découvrant une ressemblance physique troublante, les deux jeunes filles se rendent à l''évidence et découvrent avec surprise qu''elles sont... soeurs jumelles ! Leurs parents se sont séparés à leur naissance. L''une vit avec son père viticulteur en Californie, l''autre avec sa mère dans un quartier chic de Londres.', '/film-img/a_nous_4.png','Pour permettre à la jeune actrice de jouer les jumelles, l’équipe du film avait un système bien rodé. Chaque scène mettant en scène les deux sœurs a été filmée deux fois, Lindsay Lohan jouant soit Hallie, soit Annie, face à une doublure qui lui donnait la réplique. Après la première prise, l’actrice recevait une oreillette pour pouvoir entendre les dialogues qu''elle avait précédemment enregistrés dans le rôle de l''autre jumelle.'),

('Le grand restaurant','Au cours d''un dîner au Grand restaurant, un chef d''État sud-américain disparaît mystérieusement. Le patron, Monsieur Septime, est bientôt soupçonné. Une organisation de redoutables terroristes, lancée sur la piste du disparu, investit le restaurant où commence une rocambolesque partie de cache-cache entre policiers, journalistes et le personnel de Septime', '/film-img/Le_grand_restaurant.webp','Le Grand Restaurant est le premier film pour lequel Louis de Funès participe directement à l''écriture du scénario.'),

('La grande vadrouille', 'Au retour d''un bombardement sur la Ruhr, un avion anglais de la R.A.F. se trouve pris dans le feu de la Flak allemande qui le descend au-dessus de Paris. Sir Reginald, avant de sauter en parachute sur la ville occupée, fixe à ses hommes un point de ralliement: le Hammam. Peter Cunningham tombe sur l''échafaudage d''Augustin, peintre en bâtiment, nettoyant la façade de la Kommandantur.', '/film-img/la gande vadrouille.webp', 'La performance de Louis de Funès
Trois mois. C’est le temps passé par Louis de Funès chez lui, devant le miroir de son salon, pour répéter la scène dans laquelle il dirige un orchestre jouant La Damnation de Faust, de Berlioz. Un travail de longue haleine qui lui permet de réaliser, sur le tournage, une remarquable performance de chef d’orchestre. A tel point que le comédien a été ovationné dès la fin du morceau par les centaines de figurants et tout l’orchestre.'),

('Les avanture de Rabbi Jacob','À la suite d''un quiproquo, un homme d''affaires irascible et raciste se retrouve confronté, malgré lui, à un règlement de compte entre terroristes d''un pays arabe. Pour semer ses poursuivants, il se déguise en rabbin, après avoir croisé des religieux juifs en provenance de New York à l''aéroport d''Orly.', '/film-img/rabbi_jacob_-_37.jpg','Le contexte international a failli retarder sa sortie
A l''époque, le film avait déjà été au coeur d''une polémique. Il est sorti un an près la prise d''otages des Jeux olympiques de Munich, en 1972. Mais sa sortie coïncide aussi avec la guerre du Kippour, en octobre 1973. Ce conflit opposait une coalition arabe menée par l’Égypte et la Syrie aux forces israéliennes.'),

('La follie des grandeurs', 'Don Salluste profite de ses fonctions de ministre des Finances du roi d''Espagne pour racketter le peuple. Mais la Reine qui le déteste réussit à le chasser de la cour. Ivre de vengeance, il décide de la compromettre. Son neveu Don César ayant refusé de se mêler du complot, c''est finalement le valet de Don Salluste, Blaze, transi d''amour pour la souveraine, qui tiendra le rôle du Prince charmant.', '/film-img/folie_grandeur.webp', 'Le rôle de Blaze, le valet de La Folie des grandeurs, avait été à l''origine conçu pour Bourvil. Mais, la mort de celui-ci quelques mois avant le début du tournage obligea Gerard Oury à remanier le rôle pour Yves Montand... '),

('Le Magnifique', 'Au Mexique, l''agent secret du F.B.I. qui téléphone d''une cabine publique, voit celle-ci enlevée dans les airs par une grue qui jette la cabine et son occupant au plus profond de l''océan, en pâture à un requin. Cet incident sera le début, pour Bob Saint-Clair, agent secret d''une série de livres policiers, de nouvelles aventures que l''auteur, le timide François Merlin, s''ingénie à varier. Sensible et créatif, François assimile les personnages qui composent sa modeste vie aux héros de ses romans', '/film-img/le_Magnifique.webp', 'Le début du tournage fut une malédiction. En sautant en marche de la voiture, Belmondo se blessa à la cheville. Ce n''était que le début ! "On tournait à Acapulco en saison sèche, avec des palmiers avachis, c''était pas beau. En plus, le labo mexicain a bousillé le négatif de ce qu''on avait déjà tourné. Le producteur a tout arrêté et a envoyé tout le monde à la plage ! On a ensuite tout repris à zéro ailleurs, à Puerto Vallarta."'),

('On continue à l''appeler Trinita', 'Avant de mourir, le père de Bambino a fait promettre à ce dernier de faire de son frère Trinita un bandit exemplaire qui honore la famille. Bambino s''y emploie, mais tous deux sont de trop bonne composition pour faire une carrière de bandits ! C''est ainsi qu''à chaque fois ils portent secours à ceux qu''ils comptaient initialement détrousser, et combattent les hors-la-loi au lieu de les imiter.', '/film-img/trinita.webp', ' On l''appelle Trinita a véritablement lancé la carrière de Bud Spencer et Terence Hill. Pourtant, en découvrant le résultat final, ce dernier était atterré, à en croire les confidences de Sergio Leone dans "Conversation avec Sergio Leone" : "Au départ ils avaient tourné un film sérieux" dévoile le réalisateur'),

('Les simpsons', 'Homer, le père, a deux passions : regarder la télé et boire des bières. Mais son quotidien est rarement reposant, entre son fils Bart qui fait toutes les bêtises possibles, sa fille Lisa qui est une surdouée, ou encore sa femme Marge qui ne supporte pas de le voir se soûler à longueur de journée.', '/film-img/simpson.webp', 'Matt Groening, le concepteur des Simpson, nomma les personnages d''après les membres de sa propre famille. Néanmoins, pour le fils, il remplaça son prénom Matt par "Bart", un anagramme du mot anglais "brat" signifiant "sale gosse"'),

('Friends','Située à New York, la série tourne autour d''un groupe de six amis - Ross Geller, Rachel Green, Monica Geller, Chandler Bing, Joey Tribbiani et Phoebe Buffay - alors qu''ils naviguent à travers les hauts et les bas de la vie, de l''amour et des carrières.

La série débute avec Rachel, une jeune mariée en fuite, cherchant refuge auprès de son amie d''enfance Monica, qui vit dans un appartement partagé avec son frère Ross. Chandler, le camarade de fac de Ross, Joey, un acteur aspirant, et Phoebe, une masseuse et musicienne excentrique, complètent ce groupe soudé.

Le dernier épisode culmine avec le groupe faisant face à des changements majeurs dans leur vie, notamment Monica et Chandler devenant parents par adoption, Ross avouant enfin son amour à Rachel, et les amis se préparant à quitter leur lieu de rencontre emblématique, le Central Perk, pour de nouvelles aventures. ', '/film-img/Friends.webp', '236 épisodes, dix saisons diffusées de 1994 à 2004… Tourner une sitcom aussi titanesque que Friends était un défi. Chaque semaine, le rythme de travail était le même : lundi, lecture du script, mardi, mercredi et jeudi, répétitions progressives de chaque scène et vendredi, tournage de l’épisode en présence d’un public de 300 personnes. Mais pour emmagasiner autant de répliques, l’une des actrices avait sa petite technique : dissimuler des pages du scénario dans le décor de la série. Courtney Cox avait pour habitude de mettre les siennes dans la corbeille de fruits sur la table de l’appartement de Monica, ou dans l’évier, puisqu’elle passait tant de temps dans la cuisine.'),

('Orange is the new black', ' la série est basée sur les mémoires de Piper Kerman, qui raconte son expérience en tant que détenue dans une prison fédérale pour femmes.

L''histoire commence lorsque Piper Chapman, une femme aisée vivant à New York, est condamnée à une peine de prison pour avoir transporté de l''argent sale pour son ex-petite amie, Alex Vause, une trafiquante de drogue. Piper est incarcérée dans la prison pour femmes de Litchfield, où elle fait l''expérience de la vie en détention, avec ses règles, ses rivalités et ses amitiés inattendues.','/film-img/Orange_is_the_New_Black.jpg', 'Et oui, Orange is the New Black est inspiré d’une histoire vraie ! L’histoire de Piper Kerman a inspiré Jenji Kohan et l’équipe de Netflix pour en faire une série haletante. Une autre petite anecdote ? Allez, c’est cadeau : c’est au départ Ryan Murphy (Glee, American Horror Story) qui était sur le projet !'),

('Breaking bad', ' Walter White, un professeur de chimie du secondaire devenu fabricant de méthamphétamine après avoir été diagnostiqué d''un cancer du poumon en phase terminale.

Face à des difficultés financières et à l''incertitude de l''avenir de sa famille, Walter décide d''utiliser ses connaissances en chimie pour fabriquer et vendre de la méthamphétamine de haute qualité avec l''aide d''un ancien élève, Jesse Pinkman. Ce choix le conduit dans un monde dangereux et criminel, où il est confronté à des dilemmes moraux et à des conséquences inattendues.','/film-img/Breaking_bad.webp', ' Plusieurs acteurs ont débuté leur carrière dans la série. L’un des zinc Salamanca, pour sa première scène en tant qu’acteur, a dû marcher tranquillement comme si de rien n’était avec une explosion dans son dos. Une première un peu plus rude que celle de Marius Stan aka Bogdan, le boss de Walt au car-wash, qui dans la vraie vie est… chimiste.'),

('Desperathe housewives', 'Cela se déroule dans la banlieue fictive de Fairview et suit la vie de plusieurs femmes au foyer qui vivent dans la rue Wisteria Lane.

L''intrigue commence avec le suicide de Mary Alice Young, une habitante de Wisteria Lane, qui laisse derrière elle un mystère que ses amies et voisines tentent de résoudre. Au fur et à mesure que la série progresse, elle explore les secrets, les scandales et les drames qui se déroulent derrière les portes closes de cette communauté en apparence idyllique.

Les personnages principaux comprennent Susan Mayer, une artiste romantique et maladroite ; Bree Van de Kamp, une femme au foyer perfectionniste et chef culinaire émérite ; Lynette Scavo, une mère de famille dévouée aux prises avec les défis de l''éducation de ses enfants ; Gabrielle Solis, une ex-mannequin qui lutte contre l''ennui dans son mariage ; et Edie Britt, une femme fatale séductrice.','/film-img/desperatewebp.webp', 'Si aujourd’hui on ne peut pas s’imaginer cette série sans ce titre frappant, à l’époque la production avait d’autres idées en tête pour nommer le quotidien de ces femmes. La production avait ainsi pensé à appeler la série : The Secret Lives of Housewives ou encore The Secrets of Wisteria Lane.

C’est finalement le titre Desperate Housewives qui a été retenu. Il faut dire que « Femmes au foyer désespérées » correspondait plutôt très bien à la vie de nos Desperates préférées'),

('Dexter', 'Brillant expert scientifique du service médico-légal de la police de Miami, Dexter Morgan est spécialisé dans l''analyse de prélèvements sanguins. Mais voilà, Dexter cache un terrible secret : il est également tueur en série. Un serial killer pas comme les autres, avec sa propre vision de la justice', '/film-img/dexter.webp', 'Il existe quelques différences entre le livre et la série. Par exemple, dans le roman, l''ex-mari de Rita est toujours violent envers elle et ses enfants. Autre exemple : à la fin du livre, Deborah découvre que son frère est un serial-killer, ce qui n''est pas du tout le cas dans la série.'),

('Homeland', 'la série suit l''histoire de Carrie Mathison, une agente de la CIA bipolaire, et de sa lutte contre le terrorisme mondial.

L''intrigue débute lorsque Carrie reçoit des informations d''une source confidentielle sur le retour d''un soldat américain, Nicholas Brody, après huit ans de captivité en Irak. Convaincue que Brody a été retourné par Al-Qaïda, Carrie se lance dans une mission clandestine pour prouver sa loyauté envers les États-Unis, malgré les doutes de ses supérieurs.

Au fur et à mesure que la série progresse, elle explore les thèmes de la paranoïa, de la manipulation, et des conflits moraux et éthiques auxquels sont confrontés les personnages. Homeland offre également un regard complexe sur les enjeux géopolitiques et les tensions internationales, notamment en ce qui concerne les relations entre les États-Unis et le Moyen-Orient.

Les saisons suivantes voient Carrie affronter de nouveaux ennemis et de nouveaux défis, tout en luttant contre sa propre santé mentale et ses démons intérieurs. La série présente également des personnages comme Saul Berenson, mentor et collègue de Carrie à la CIA, et Peter Quinn, un agent de terrain avec un passé sombre.', '/film-img/homeland.webp', 'Halle Berry aurait pu jouer Carrie
En effet, Halle Berry aurait dû incarner le personnage, qui devait d''ailleurs s''appeler Claire Mathison. Finalement, elle a refusé le rôle et le prénom a été changé en Carrie. Comme pour Damian Lewis, Alex Gansa voulait absolument Claire Danes dès le départ.'),

('Les bronzee font du ski', 'Le film suit les péripéties de vacanciers français typiques, chacun avec ses propres problèmes et excentricités, alors qu''ils passent une semaine dans un club de vacances en montagne. On retrouve notamment Popeye, Gigi, Jérôme, Nathalie, Bernard et Jean-Claude, des amis qui se retrouvent pour des vacances mouvementées.

Au cours de leur séjour, ils vivent des situations comiques, des quiproquos et des moments cocasses, alors qu''ils tentent de profiter au maximum de leurs vacances malgré les obstacles qui se dressent sur leur chemin. Entre les romances qui naissent, les rivalités qui s''intensifient et les gags qui s''enchaînent, le film offre un humour décalé et une satire des vacances touristiques.','/film-img/bronzee_font_du_ski.webp', 'Parmi les scènes mythiques du film Les Bronzés font du ski, il y a évidemment celle de la dégustation de la « liqueur de crapaud ». Et le tournage de ce passage devenu culte n’a pas été une mince affaire… L’équipe a été contrainte de s’y reprendre à 20 fois avant de mettre en boîte cette séquence, car le chef opérateur Jean-François Robin avait un fou rire à chaque fois qu’il devait cadrer les grimaces de Michel Blanc et Gérard Jugnot. Et, comme si cela ne suffisait pas, les comédiens ont confié avoir eu la bouche en feu lors du tournage de cette scène car ils dégustaient de la vraie liqueur. ');



INSERT INTO "Recettes" ("nom", "photo", "contenu", "id_films" ) VALUES 

('Ratatouille', '/imgs/raratouille.webp','Au robot, trancher en fines lamelles l''oignon, le faire revenir dans de l''huile d''olive dans un wok ou une grosse poêle à fond anti-adhésif.
Couper la tomate en quartiers et l’ajouter au tout.
Pendant ce temps, trancher également l''aubergine et les courgettes.
Verser les légumes dans la poêle, ajouter un peu d''herbes de Provence, l''ail, couvrir. Remuer de temps à autre, c''est prêt en 20 minutes environ.', 1),


('Spaghetti aux boulettes', '/imgs/spaghetti _boulette.webp', 'Dans un wok ou un faitout, faites revenir un oignon émincé avec l''huile d''olive. Ajouté la tomate coupée en cubes et l''ail émincé. Ajoutez le concentré de tomates et un peu d''eau et mélangez bien.
Dans un saladier, mélangez les 2 viandes, ajoutez la chapelure, l''oeuf et un oignon finement émincé. Réalisez les boulettes de la taille d''une noix et les faites-les revenir dans une poêle bien chaude. Faites cuire 10 minutes. Ajoutez les boulettes dans le faitout, ajoutez le vin, le thym, le laurier et laissez mijoter à feu doux pendant 20 minutes.
Faites cuire vos spaghettis 10 minutes dans une grande casserole d''eau avec le bouillon cube et un peu de sel. Une fois cuits, égouttez. Servez vos spaghettis dans des assiettes creuses, ajoutez la sauce et les boulettes et nappez de parmesan. Dégustez de suite.', 2),

('Chocolat chaud', '/imgs/chocolat_chaud.webp', 'Faites chauffer le lait et la crème dans une casserole avec le sachet de sucre vanillé. 
Ajoutez le chocolat haché en fouettant. 
Laissez épaissir le mélange sur feu doux pendant 5min en mélangeant.', 3),

('Dumplings', '/imgs/dumplings_.webp', 'Dans un grand bol, mélangez la farine et le sel pour la pâte des dumplings. Versez l''eau bouillante sur le mélange et remuez avec une cuillère en bois jusqu''à ce qu''une pâte se forme. Pétrissez la pâte à la main pendant environ 5 minutes jusqu''à ce qu''elle soit lisse et élastique. Couvrez la pâte d''un torchon humide et laissez-la reposer pendant 30 minutes.
Pendant ce temps, préparez la garniture des dumplings en mélangeant le porc haché, les crevettes hachées, les oignons verts, l''ail, la sauce soja, l''huile de sésame, la fécule de maïs, le sel, le poivre blanc et le sucre dans un bol. Mélangez bien tous les ingrédients jusqu''à obtenir une garniture homogène.
Sur une surface légèrement farinée, étalez la pâte à dumplings en un long cylindre d''environ 2,5 cm de diamètre. Coupez le cylindre en petits morceaux d''environ 1,5 cm d''épaisseur.
Prenez un morceau de pâte et aplatissez-le avec la paume de votre main pour former un cercle. Utilisez un rouleau à pâtisserie pour amincir le cercle en une petite rondelle d''environ 8 cm de diamètre.
Placez une cuillère à café de garniture au centre de chaque rondelle de pâte. Pliez la pâte en deux pour former un demi-cercle et pincez les bords pour les sceller. Vous pouvez également plier les bords en petits plis décoratifs si vous le souhaitez.
Répétez le processus avec le reste de la pâte et de la garniture jusqu''à ce que tous les dumplings soient formés.
Dans une grande casserole d''eau bouillante, faites cuire les dumplings par petites quantités pendant environ 5 à 6 minutes, ou jusqu''à ce qu''ils flottent à la surface et que la pâte soit cuite.
Pendant la cuisson des dumplings, préparez la sauce dip en mélangeant la sauce soja, le vinaigre de riz, l''huile de sésame, le sucre et le gingembre râpé dans un bol.
Égouttez les dumplings cuits et servez-les chauds avec la sauce dip.', 4),

('Tablette de chocolat', '/imgs/la_tablette_de_chocolat.webp', 'Faire fondre le chocolat au bain-marie.
Préchauffer le four à 180°C.
Mélanger les œufs en omelette, y ajouter le formage frais, le sucre, l’amande en poudre et le chocolat fondu.
Couler dans le moule et enfourner 20mn.
Laisser refroidir avant de démouler.
Il est temps de mettre les gants en latex !
Prélever  un gros morceau de pâte d''amande et la colorer en marron (bien malaxer pour intégrer la couleur de manière homogène) et étaler au rouleau à pâtisserie et disposer sur les ¾ du gâteau pour recréer l’emballage en papier déchiré .
Étaler 1 morceau de pâte d''amande blanche et 1 morceau de pâte d''amande rose, les superposer (le blanc sur le rose) et en découper les lettres W.O.N.K.A., a disposer sur l’emballage marron de la tablette gâteau.
Puis décorer à volonté.', 5),

('Cake au citron', '/imgs/Le_cake_au_citron.webp ', 'Séparer les blancs de jaunes.
Battre les blancs d''oeufs en neige, puis les réserver.
Au bain-marie, faire fondre le beurre.
Râper le citron.
Travailler les jaunes avec le sucre.
Ajouter le citron râpé, la farine, la levure et le beurre fondu. Y incorporer délicatement les blancs en neige.
Enfourner à 180°C (thermostat 6) pendant 30 à 40 min.
Pendant ce temps, faire le sirop à feu doux avec les 20 morceaux de sucre et le jus des 2 citrons; imprégner le cake avec ce sirop.
Servir froid avec de la crème anglaise, des fraises, framboises, etc. Et même nature !', 6),

('Crème brûlée', '/imgs/creme_brulee.webp', 'Fendre la gousse de vanille en 2, et extraire les graines en raclant avec la lame d''un couteau. placer la gousse de vanille égrenée dans une casserole avec la crème, puis faire infuser à feu doux.
Pendant ce temps, battre les jaunes d''œufs avec le sucre et les grains de vanille dans un saladier, jusqu’à obtention d''une texture mousseuse.
Une fois la crème bien parfumée, ôter du feu et laisser tiédir. à travers une passoire, verser ensuite un petit peu de crème tiède sur la préparation aux œufs, et fouetter énergiquement pour éviter la cuisson des jaunes. renouveler cette opération jusqu’à épuisement de la crème.
Dans un grand plat à rebords allant au four, déposer 8 ramequins. verser la préparation pour crème brûlée dans les ramequins. verser ensuite de l’eau dans le plat jusqu’à atteindre la mi-hauteur des ramequins. enfourner 35 min à 160 °c.
Placer les crèmes brûlées cuites et refroidies au réfrigérateur pendant 4 h minimum avant de les caraméliser. au moment de servir, recouvrir le dessus de cassonade de manière uniforme, puis passer la flamme du chalumeau une première fois sur toute la surface. patienter quelques secondes pour que le caramel commence à se former. répéter l’opération plusieurs fois jusqu’à obtenir une belle coloration dorée. déguster avec quelques tuiles aux amandes ou des rochers coco.', 7),

('Vodka martini', '/imgs/vodka-martini.webp', 'Versez la vodka et le Martini dans un shaker rempli de glace. 
Secouez énergiquement. 
Versez dans un verre en filtrant la glace. 
Ajoutez l’olive et le citron. Servez immédiatement.', 8),

('Carbonnade flammande', '/imgs/carbonade flamandejpg.jpg', 'Couper la viande en cubes de 2 à 3 centimètres de côté. Découper grossièrement les oignons et couper le lard en gros lardons.
Faire fondre le beurre et faire suer les oignons dedans 10 minutes pour les ramollir (feu au mini à couvert).
Ajouter le lard en augmentant légèrement le feu, remuer régulièrement en essayant de garder couvert le plus possible.
Une fois le lard bien rose, retirer le tout (sauf le jus) et le réserver dans un plat.
Mettre le feu au maxi et mettre la viande dans la cocotte. Remuer régulièrement (ne pas couvrir), la viande doit se colorer de tous les côtés, elle va finir par rendre pas mal de jus. Retirer la cocotte du feu, mettre la viande dans un plat en conservant le jus dans la cocotte.
Diluer la cassonade dans le jus de viande et mettre sur le feu à fond pour le réduire de moitié.
Une fois réduit, mettre le feu au mini et remettre le mélange lard-oignons en le mêlant au sirop, ajouter la viande et re-mélanger, ajouter le bouquet garni et recouvrir de bière entre (80 cl et 1 litre), saler très légèrement.
Recouvrir délicatement toute la surface avec le pain d''épices moutardé. Laisser mijoter à couvert 3 heures sans remuer, tant que le pain d''épices n''est pas fondu (retirer le bouquet après 1 heure ou 2 maxi).
En cours de mijotage, rectifier l''assaisonnement si besoin.
Si après trois heures, le jus est encore trop liquide, laisser encore mijoter en laissant le couvercle en partie ouvert, la sauce doit être légèrement collante en surface mais bien liquide en dessous et ne doit surtout pas brûler au fond.', 9),

('Beignet cajun', '/imgs/beignet-cajun.webp', 'Verser la farine dans le bol de votre robot munie d''un crochet. ( vous pouvez aussi pétrir à la main ).
Faire un puits avec la farine et rajouter le sucre, le sel, le sucre vanillé, l’œuf, la levure chimique et la levure boulangère. ( attention de ne pas mettre la levure boulangère en contact direct avec le sel).
Verser petit à petit le lait tout en pétrissant pendant 5 minutes.
Rajouter le beurre mou et pétrir encore pendant 5 minutes de plus.
Quand vous avez une pâte ferme, couvrir et laisser reposer au moins 1 h 30 ( suivant la température de la pièce ça peux être plus longtemps ) il faut que la pâte double de volume.
Dégazer la pâte et fariner votre plan de travail. Etaler la pâte sur une hauteur d''un centimètre et couper des carrés d''environ 7 x 7 cm.
Couvrir et laisser encore reposer 30 min environ. Chauffer de l’huile ( si vous avez un thermomètre il faut qu’elle soit à 180 degrés ).
Plonger les carrés de pâte et cuire 2 minutes de chaque côtés. Quand elles sont dorées, déposer sur du papier absorbant et saupoudrer de sucre glace.
Déguster encore tiède ! Bon appétit !', 10),

('Apple pie', '/imgs/apple-pie.webp', 'Pour la pâte : dans un saladier de taille moyenne, mélanger ensemble la farine et le sel. Couper le beurre en petits morceaux et l’émietter avec la farine jusqu’à l’obtention d''une texture fine et légèrement granuleuse. 
Incorporer le sucre et bien mélanger. Verser l’eau froide en plusieurs fois, mélangeant avec une fourchette. Finir à la main et former une boule de pâte. Aplatir légèrement la boule de pâte, l’envelopper dans du papier film et laisser reposer au réfrigérateur pendant 30 minutes.
Pendant ce temps, préparer la garniture : peler, éplucher et épépiner les pommes, et les mélanger avec le jus de citron et le zeste de citron dans un grand saladier.
Dans un bol, mélanger le sucre, la farine, la maïzena, le sel et les quatre épices. Répartir le mélange sur les pommes et bien mélanger. Ajouter le cidre porté à ébullition et le jus de pommes et remuer de telle sorte que toutes les lamelles de pommes soient impreignées du mélange.
Lorsque la pâte est prête, la diviser en 2 morceaux, l’un étant deux fois plus large que l’autre. Le plus large servira de pâte pour le fond de la tarte tandis que le plus petit servira à réaliser le quadrillage au dessus de la tarte.
Former un large disque avec chacun des pâtes, d''environ 1/2 à 1 cm d''épaisseur.
Préchauffer le four à 190°C. Beurrer et fariner un moule à tarte (ou à gâteau) de 24-26 cm de diamètre et d''au moins 2 cm de profondeur.
Foncer le moule à tarte avec la plus grande des pâtes, égalisant les extrimités au couteau de telle sorte qu’elles dépassent un peu du moule sur l’extérieur tout autour.
Garnir le fond de la tarte avec les pommes, et ajouter les dés de beurre par dessus.
Couper le second disque de pâtes en lamelles d''environ 2 cm de large. Tisser un joli quadrillage sur le dessus de la tarte, et sertir les bords avec une fourchette.
Battre un oeuf et une cuillère à soupe d''eau, et badigeonner le quadrillage et les bords de la tarte de ce mélange. Parsemer un peu de sucre en poudre par dessus, ce qui donnera un aspect brillant et croustillant à la pâte.
Enfourner pendant 50 minutes à mi hauteur, jusqu’à ce que la garniture commence à faire quelques bulles à l’intérieur de la tarte. Vérifier la tarte après 20 minutes de cuisson et couvrir les bords avec de l’aluminium afin d''éviter qu’ils ne brûlent.
Lorsque la tarte est prête, la retirer du four et la laisser refroidir complètement. Servir avec un peu de glace à la vanille.', 11),

('Lasagnes', '/imgs/lasagne.jpg', 'Emincez l’oignon et faites-le revenir quelques minutes à feu moyen dans un filet d''huile. Ajoutez la viande et laissez cuire 5 min à feu vif en remuant.
Ajoutez les tomates et les herbes, laissez cuire 10 min à feu doux.
Dans une petite casserole, faites fondre le beurre. Incorporez la farine, puis le lait très progressivement. Montez à ébullition en fouettant constamment, laissez cuire encore deux minutes et vérifiez l’assaisonnement.
Etalez un peu de béchamel au fond du plat, puis déposez une couche de lasagnes.
Superposez ensuite la viande, la béchamel et les lasagnes, recommencez autant de fois que nécessaire.
Nappez la dernière épaisseur de lasagnes, de sauce béchamel pour éviter qu’elles ne sèchent.
Saupoudrez les lasagnes à la bolognaise de gruyère râpé et faites cuire 30 min à 180 °C.
Astuce : les lasagnes sont presque encore meilleures réchauffées, n’hésitez pas à les faire à l’avance.', 12),

('Pudding à l''arsenic', 'https://www.youtube.com/embed/qOTQ9NJXAvE?si=bYF8gtCmZDH0WoEO', '
Dans un grand bol de strychnine
Délayez de la morphine
Faites tiédir a la casserole
Un bon verre de pétrole...
Amonbofis : - Ho Ho, je vais en mettre deux.
Quelques gouttes de ciguë
De la bave de sangsue
Un scorpion coupe très fin
Tournevis : - Et un peu de poivre en grains !
Amonbofis : - Nooon !
Tournevis : - Ah? Bon...
Emiettez votre arsenic
Dans un verre de narcotique
Deux cuillères de purgatif
Qu''on fait bouillir à feu vif...
Amonbofis : - Ho Ho, je vais en mettre trois.
Dans un petit plat à part
Tiédir du sang de lézard
La valeur d''un dé à coudre
Tournevis : - Et un peu de sucre en poudre !
Amonbofis : - NON !
Tournevis : - Ah? Bon.
Vous versez la mort-aux-rats
Dans du venin de cobra
Pour adoucir le mélange
Pressez trois quartiers d''orange...
Amonbofis : - Ho Ho, je vais en mettre un seul.
Décorez de fruits confits
Moisis dans du vert-de-gris
Tant que votre pâte est molle
Tournevis : - Et un peu de vitriol !
Amonbofis : - NON... OUIIIIIIIII !!!
Tournevis : - Aaah... Je savais bien qu''ça serait
bon.', 13),

('Biscuit en pain d''épice', '/imgs/biscuit-pain-epice.webp', 'Dans un saladier, mélangez le beurre mou avec le sucre et le miel. Mélangez avec une cuillère en bois jusqu''à avoir une consistance de pommade.
Incorporez l’oeuf peu à peu.
Tamisez la farine, la levure chimique et les épices pour pain d''épices. Incorporez-les au mélange avec une cuillère puis finissez à la main.
Filmez la pâte et réservez-la au réfrigérateur 30 min pour qu’elles soient moins collantes.
Etalez la pâte sur un plan de travail fariné sur une épaisseur d''1/2 cm.
Découpez des biscuits avec l’emporte-pièces bonhommes. Posez-les sur une plaque recouverte de papier sulfurisé.
Faites-les cuire 10 à 15 min dans le four préchauffé à 180°C. Les biscuits sont encore souples à la sortie du four et ils durcissent ensuite.
Laissez-les complètement refroidir puis décorez-les avec du glaçage royal ou un stylo décor de glaçage blanc.', 14),

('Tourte à la viande', '/imgs/tourte a la viande.webp', 'Dans un robot-mixer, mettre l''oignon, l''ail, les échalotes, le persil, le sel et poivre et les 2 oeufs. Mélanger cette préparation au boeuf haché et à la chair à saucisse, ajouter également le verre de vin blanc.
Installer les 2 fonds de pâte feuilletée dans le moule à tarte. Déposer une première couche de fines tranches de lard. Mettre ensuite une première couche de viande hachée et y répartir les aiguillettes de canard.
Compléter avec une deuxième couche de viande hachée.
Terminer avec les dernières tranches de lard.
Refermer la tourte avec la 3ème pâte feuilletée (attention, il faut enlever le papier cuisson, opération un peu délicate).
Pour finir avec la pointe du couteau, faire quelques stries. Faire cuire à 200°C pendant 45 minutes.', 15),

('Pain perdu', '/imgs/pain perdu.webp', 'Fouetter les oeufs avec le sucre et le lait.
Y tremper les tranches de pain.
Deux solutions pour la cuisson : les cuire à la poêle dans du beurre en les faisant dorer de chaque côté, ou, les cuire au four : beurrer légèrement un plat à gratin, y répartir les tranches, verser le reste du mélange (ajouter du sucre si envie), laisser cuire à 180°C (thermostat 6) jusqu''à que les tranches soient dorées.', 16),

('Tiramisu', '/imgs/tiramissu.jpg', 'Préparation de la crème mascarpone:_séparer les blancs des jaunes._mettre le fouet dans le bol_mettre les jaunes et la cassonade dans le bol puis programmé2min30 vitesse 3 pour faire blanchir le mélange.
A la sonnerie programmé 5 minutes vitesse 2 et ajouté le sucre vanillé et le mascarpone petit a petit sur le fouet en marche par le trou du couvercle , si le tout est bien mélangé avant la fin du temps vous pouvez passé a l''étape suivante.
Réservé au refrigirateur dans un récipient afin de laver le bol. Montage des blancs en neige: inserer le fouet et les blancs d''oeuf ainsi qu une pincé de sel, programmé le robot 3-4minutes vitesse 3.5 en augmentant la vitesse progressivement la premiere minute,(il faut que le bol sois bien sec afin de réussir l''opération)._Une fois les blancs bien ferme ajouter les petits a petit a l''aide d''un fouet ou d''une marise a la préparation précédentes. 
Pour le montage j''utilise des verrines,on trempe les biscuits cuilleres un a un dans le café puis les disposé de facon a avoir une couche de biscuit ou couche de crémes mascarpone. (deux couches de chaques)laisser au réfrigirateur au moin 4h puis soupoudré de cacao en poudre amer. Bonne dégustation', 17),

('Gâteau au chocolat', '/imgs/gateau-chocolat.jpg', 'Coupez le chocolat et le beurre en petits morceaux. Faites-les fondre en bain-marie jusqu’à avoir un mélange homogène. Retirez du feu. (J’évite le micro-ondes qui peut faire brûler le chocolat si la cuisson est mal maitrisée).
Ajoutez la farine et la levure tamisées dans le chocolat fondu.
Dans un saladier, fouettez les jaunes avec le sucre. Puis ajoutez la préparation au chocolat.
Dans un autre saladier, battez les blancs d''oeufs en neige avec une pincée de sel. Incorporez-les délicatement dans la préparation au chocolat.
Versez ce mélange dans un moule à manqué recouvert de papier sulfurisé (24 à 26 cm de diamètre).
Faites cuire environ 20 à 25 min dans le four préchauffé à 180°C (chaleur tournante). Surveillez la fin de la cuisson en piquant le gâteau avec la lame d''un couteau : elle doit ressortir sèche. Laissez bien refroidir le gâteau au chocolat avant de démouler.', 18),

('Big kahuna burger', '/imgs/big-burger.jpg', 'Préchauffer le four à 160°C.
Éplucher et tailler les oignons rouges en tranches fines.
Éplucher un ananas et le couper en tranches.
Laver et couper des rondelles de tomates.
Laver les feuilles de salade.
Dans une poêle, faire fondre une noix de beurre et faire revenir les oignons jusqu''à ce qu''il soient bien confits.
Colorer les tranches d''ananas à la poêle. Réserver.
Faire cuire les steaks hachés à la poêle. Assaisonner.
Pendant les cuissons, couper les pains à burger en deux. Les déposer sur la plaque du four, avec une tranche de cheddar sur chaque base de burger, soit sur la moitié des pains.
Enfourner pour quelques minutes, le temps de faire fondre le fromage.
Poser les steaks sur les pains avec fromage fondu. 
Mettre un peu de ketchup. 
Ajouter les oignons confits et les tranches d''ananas caramélisées.
Verser de la sauce Teriyaki sur les pains sans fromage et refermer les burgers.', 19),

('Hot dogs', '/imgs/hot-dog.webp', 'Faites bouillir les saucisses une dizaine de minutes. Laissez au chaud.
Dans une poêle, faites revenir les oignons émincés. Versez 4 cuillères à soupe de sucre blanc et deux de ketchup.
Ouvrez les pains dans le sens de la longueur et passez-les 2 mn sur le gril face bombée vers l’extérieur.
Nappez le pain avec la sauce et un peu de moutarde. Mettez la saucisse et dégustez chaud.', 20),

('Bière au Beurre', '/imgs/bierre-au-beurre.webp', 'Faire fondre le beurre à feu très doux dans une casserole en mélangeant jusqu’à obtenir une crème onctueuse
Puis ajouter le sucre roux au beurre et le mélanger jusqu’à sa dissolution. 
La bière au beurre commence à prendre forme ! 
PERSONNALISER LA PRÉPARATION
Pour les amateurs d''épices, c’est le moment de les ajouter ! Faire attention aux grumeaux : mélanger vigoureusement sans s’arrêter pour les éviter.
Dans un autre récipient, porter à ébullition la bière sans alcool  et l’ajouter directement au mélange beurre-sucre-épices.
SERVIR LA BIÈRE AU BEURRE BIEN CHAUDE !', 21),

('Dragée surprise', '/imgs/DragéesSurprisesBertieCrochue.jpg', 'Saveurs possibles :
Bons gouts : morceau de pruneau, de noix, de bonbon (schtroumph, nounours, fraise tagada, cocacola, etc...), de banane, de noisette, grain de raisin frais ou sec,cacahuete... 
Mauvais gouts  : grain de café, de poivre, morceau de concombre, grain de maïs, clou de girofle, morceau de cornichon...
Préparation :
Faire fondre 200g de chocolat patissier avec une cuillere a soupe d''eau dans une casserole  à feu doux en remuant doucement.
Des que la mixture est liquide, la sortir du feu puis ajouter une cuillère a soupe de crème. 
Verser un peu de chocolat au fond des alvéoles du bac à glaçons  
Laisser refroidir un peu pour que la garniture reste bien au milieu de la dragée
Sortir le bac pour déposer la garniture au milieu (l''élément qui servira de saveur
surprise) et recouvrir de chocolat
Mettre au réfrigérateur pour qu''elles deviennent bien froides
Démouler et servir', 21),

('Chocogrenouilles', '/imgs/chocogrenouille.jpg', 'Prenez la moitié de votre chocolat. Brisez-le en gros morceaux et fondez-le au bain-marie. Mélangez avec un fouet pour obtenir une crème bien lisse.
Repartissez la crème dans vos moules en forme de grenouilles très soigneusement avec une cuillère. Veillez à bien recouvrir tout le fond pour une forme parfaite de grenouille. Mettez au frigo pendant 30 minutes.
Une fois les grenouilles bien durcies, préparez la guimauve. Faites fondre les Chamallows avec un fond d''eau pour obtenir une crème. Sortez les grenouilles et répartissez-la dans vos moules. Laissez au frais au moins 2 heures.
C’est le moment de la dernière couche. Faites fondre le reste du chocolat. Recouvrez-en délicatement les grenouilles en lissant. Réservez 30 minutes au frais.', 21),

('Dinde farcie', '/imgs/dinde-farcie.jpg', 'Préchauffez le four th.7 (200 °C).
Épluchez et ciselez les oignons.
Garnir la dinde avec la farce : œufs, oignons et la chair à saucisse préalablement préparées.
Assaisonnez avec le sel, le poivre et la ciboulette.
Enduisez la dinde de beurre fondue.
Rincez et incorporez les deux pots de champignons et les oignons.
Ajoutez la margarine.
Faites cuire la dinde au four pendant 2 h.
Voilà, c''est prêt ! vous pouvez servir votre dinde farcie à vos invités affamés !', 22),

('Kloug', '/imgs/Kloug.webp', 'Commencez par préparer une crème pâtissière aux marrons. Dans une casserole faites bouillir le lait à feu vif. Dans un saladier, mélangez les 3 jaunes d''œufs et 150 g de sucre jusqu’à ce que le mélange blanchisse. Ajoutez 50 g de farine. Dès que le lait bout, versez-le sur le mélange et battez. Versez le mélange dans la casserole sur feu moyen et remuez sans cesse avec une cuillère en bois. La crème doit épaissir. Retirez-la du feu et laissez-la tiédir.
Préchauffez le four th.7 (220°C). Couvrez une plaque de cuisson de papier sulfurisé et beurrez légèrement.
Fouettez trois jaunes d''œufs et 75 g sucre jusqu’à ce que le mélange blanchisse. Incorporez 75 g de farine et 40 g de beurre fondu. Battez à nouveau. Montez trois blancs en neige et incorporez-les délicatement au mélange. Versez la pâte sur la plaque et enfournez pour 7 min.
Sortez le biscuit et retournez-le sur un linge propre pour le laisser refroidir légèrement. Coupez les marrons en morceaux. Nappez de crème pâtissière au marron et ajoutez les morceaux de marrons. Roulez le biscuit sur lui-même pour former un rouleau serré.
Terminons notre Kloug du Père Noël est une ordure par le glaçage. Faites fondre le chocolat au bain-marie. Dans le chocolat encore chaud, ajoutez 30 g de beurre détaillé en petits morceaux et le sucre glace puis mélangez. Nappez le gâteau roulé de glaçage. Décorez le dessus de votre gâteau à l’aide d''une fourchette ou ajoutez des éclats de marron. Réservez au frigo pour permettre au glaçage de figer et servez bien frais.', 22),

('Nachos', '/imgs/nachos.jpg', 'Si vous utilisez des haricots secs, les faire tremper 12 heures avant de commencer.
Hacher les oignons et l''ail et les faire revenir dans une grande poêle.
Ajouter les haricots et le piment en poudre (selon votre goût, en tout cas une grosse pointe de couteau).
Ajouter la viande hachée.
Quand la viande est presque cuite, ajouter les tomates. Cuire à feu doux jusqu''à évaporation de la moitié du jus.
Saler, poivrer et rajouter du piment si nécessaire.
Mettre les nachos dans un plat à gratin, verser le mélange et parsemer de fromage râpé.
Mettre sous le grill du four jusqu''à ce que le fromage gratine.
Servir chaud avec la crème acidulée', 23),

('Oréo', '/imgs/oreo.webp', 'Dans un saladier, tamisez ensemble la farine le cacao et le sel. Dans un second saladier, battez le beurre et le sucre au batteur. Mélangez bien puis ajoutez l''oeuf. Ajoutez le mélange avec la farine et mélangez de nouveau. Couvrez d''un papier film et réservez au frais une heure.
Préchauffez le four à 160°C ou Th.5.
Etalez la pâte sur un plan de travail fariné (1/2 cm d''épaisseur environ) et découpez-la avec des empreintes aux bords cannelés. Disposez sur une plaque recouverte de papier sulfurisé et faites cuire 15 minutes à 160°C.
Pendant ce temps, dans le bol du robot, mettez le beurre, ajoutez le sucre glace, et l''extrait de vanille, battez de nouveau, mais doucement. Versez la crème à la vanille ainsi obtenue dans une poche à douille. Réservez au frais.
Une fois vos biscuits refroidis, garnissez un biscuit de la crème et collez un second biscuit. Recommencez l''opération jusqu''à épuisement des biscuits et servez !
Conservez dans une boîte hermétique, s''il vous en reste...', 24),

('Canard à l''orange', '/imgs/canard-orange.webp', 'Préchauffer le four à 200 °C (th. 6/7).
Couper les cuisses de canard en 2 au niveau de l''articulation. Éplucher les oignons et les tailler en gros morceaux. Couper l''orange en tranches.
Dans une cocotte avec couvercle, colorer les morceaux de canard sans matière grasse, puis les réserver.
Enlever la graisse de la cocotte et colorer les morceaux d''oignons et les tranches d''orange. Ajouter le sucre, le vinaigre, et caraméliser. Déglacer ensuite avec le jus d''orange.
Remettre les morceaux de canard et ajouter l''ail non épluché, le thym et le laurier. Saler et poivrer, ajouter le jus de volaille et 1/4 de litre d''eau, puis couvrir et cuire pendant 45 min au four et à couvert.
Dresser les cuisses de canard en assiette plate, accompagner de pommes de terre sautées et de légumes verts!', 25),

('Croissant', '/imgs/croissant.webp', 'Première étape : la pâte feuilletée levée.
Délayer la levure dans l''eau tiède. Dans un grand saladier, déposer la farine, le sel, le sucre, creuser un puits et incorporer petit à petit le lait.
Quand le lait est entièrement incorporé, ajouter le mélange eau levure et pétrir la pâte pendant 15 minutes sur le plan de travail.
Former une boule, la placer dans le saladier, couvrir d''un linge et laisser reposer deux heures.
Au bout de deux heures, étaler la pâte sur le plan de travail en forme d''étoile à quatre branches en gardant le centre plus épais.
Étaler le beurre au centre et replier les branches.
Étaler alors ce pâton en un rectangle. Replier ce rectangle en trois et faire pivoter le rectangle d''un quart de tour sur la droite. Allonger à nouveau la pâte en rectangle, la replier en trois et tourner d''un quart de tour à droite.
Recommencer une fois cette opération. La pâte feuilletée levée est prête.
Deuxième étape : les croissants.
Étaler la pâte feuilletée levée finement et découper des triangles. Rouler les triangles en partant de la base pour finir par la pointe, leur donner une forme de croissant.
Laisser reposer les croissants deux heures. allumer le four thermostat 8 (240°C).
Après le repos, badigeonner au pinceau les croissant d''oeuf battu en prenant soin de ne pas les faire retomber.
Faire cuire 5 min à four chaud puis 10 à 15 min à thermostat 5/6 (160-170°C).', 26),

('Falafels', '/imgs/falafels.webp', 'La veille au soir :
Mettez à tremper 12 heures minimum les pois chiches dans un saladier rempli d''eau. Vous allez voir, c’est rigolo, vous aurez des petits bruits dans votre cuisine, comme des popcorns qui explosent ; la première fois, j’ai mis un temps fou à comprendre d''où ça venait, j’ai cru que j’avais une souris ! C’est très important d''avoir au moins 12 heures pour que les pois chiches soient suffisamment humides.
Au niveau gonflette, comptez que leur volume va se multiplier par 1.5.
Le jour J :
Pelez et coupez grossièrement votre oignon. Faire de même avec les herbes fraîches. Dans un robot mixeur, mettez tous les ingrédients (égouttez les pois chiches au préalable bien sur et séchez-les) et mixez joyeusement, assez longtemps. Attention, la texture ne doit quand même pas être trop fine, elle doit rester un peu sableuse.
Avec la cuillère à glace, faites de jolies boules que vous disposerez sur une plaque de cuisson sur laquelle vous aurez, au préalable déposé une feuille de papier sulfurisé.
Parsemez de graines de sésames et arrosez avec les 2 cuillères à soupe d''huile d''olive.
Cuisson au four (ou à l’huile)
Enfournez pour 20 minutes de cuisson dans un four préchauffé à 190° C en chaleur tournante et grill. Surveillez bien la cuisson pour ne pas trop les cuire.
Si vous préférez la cuisson classique à l’huile :  Dans ce cas, il suffit de faire chauffer de l’huile dans une sauteuse à feu moyen et d''y plonger les boules de falafels dès qu’elle est chaude. Dès qu’elles sont dorées, retournez-le et poursuivez la cuisson le temps que l’autre côté dore aussi. C’est prêt !', 27),

('Poulet roti', '/imgs/poulet roti.jpg', 'Commencez par parer le poulet, autrement dit de découper les excédents de peau au niveau du cou et du croupion et de supprimer les parties inutiles comme les extrémités des ailes. 
Pelez et coupez l’oignon en rondelles, puis écrasez les ails en laissant l’enveloppe. 
Disposez les rondelles d''oignon et les ails écrasés dans un plat allant au four, placez le poulet par-dessus, arrosez-le avec une cuillère à soupe d''huile d''olive, saupoudrez de paprika et d''herbes de Provence, salez et poivrez, puis placez deux feuilles de laurier à l’intérieur du poulet. Recette Poulet rôti
Retournez le poulet (coffre vers le dessous) de façon à assaisonner le dos de la même façon que l’étape précédente.
Emiettez le cube de bouillon dans un verre d''eau chaude, mélangez bien, puis versez-le dans le plat. Enfournez pour 1 heure 30 à 180°C** en arrosant toutes les 20 minutes à l’aide d''une poire à jus ; et en faisant cuire la volaille 1 heure avec le dos orienté vers le dessus puis en la retournant pour les 30 dernières minutes de cuisson de façon à avoir le coffre doré tout en restant bien moelleux.', 28),

('Spaghetti bolognaise', '/imgs/bolo.webp', 'Épluchez et émincez finement les oignons et l''ail.
Faites chauffer l''huile d''olive dans une poêle sur feu vif. Quand l’huile d''olive est bien chaude, déposez les oignons et l’ail émincés dans la poêle et faites-les revenir pendant 3 min, en remuant bien, jusqu''à ce que les oignons soient bien translucides. Ajoutez ensuite la viande de bœuf hachée, puis poursuivez la cuisson pendant 3 à 4 min sans cesser de mélanger, jusqu''à ce qu''elle ne soit plus rosée.
Incorporez les tomates pelées, les branches de thym et la feuille de laurier. Salez et poivrez selon vos goûts, ajoutez le sucre, puis mélangez. Baissez sur feu doux et laissez mijoter pendant 10 min environ, en remuant régulièrement.
Pendant ce temps, portez à ébullition un grand volume d''eau salée dans une casserole sur feu vif. Dès l’ébullition, plongez les spaghettis dans l’eau bouillante et laissez-les cuire en suivant les instructions du paquet ou jusqu’à ce qu’ils soient al dente. Lorsque les spaghettis sont cuits, égouttez-les dans une passoire et réservez-les au chaud.
Quand la sauce bolognaise est prête, rectifiez l’assaisonnement en sel et en poivre si nécessaire, puis nappez-en les spaghettis déposés dans les assiettes. Dégustez aussitôt.', 29),

('Haricots', '/imgs/haricot.jpg', 'Tout d''abord, pensez aux haricots. Si vous utilisez des haricots en conserve, les temps de cuisson seront très court et tout ce que vous avez à faire est de les vider des leurs liquide de conservation. Si vous choisissez plutôt des haricots secs, vous devrez les laisser tremper puis les cuire à grande eau pendant plus d''une heure.
À ce stade, dans une grande casserole à double anse, faites revenir l’oignon et l’ail hachés dans quelques cuillères à soupe d''huile d''olive extra vierge.
Mettez également le bacon (vous pouvez utiliser bacon fumé ou guanciale) et laissez-le devenir croustillant. Insérez ensuite les haricots et recouvrez-les de la purée de tomates, puis assaisonnez avec du sel, du poivre, du piment (frais ou en poudre) et quelques gouttes de Tabasco.
Laissez le tout cuire, de façon à bien parfumer vos haricots rouges, puis retirer l’ail et servez votre compote de haricots avec des tranches de pain grillé ou… une miche de super dimension!', 30),

('Donuts', '/imgs/donuts.webp', 'Mélanger la farine, la levure, le sel, la cannelle et la muscade.
Dans un autre bol, mélanger les oeufs (battus), le sucre et la vanille. Mélanger jusqu''à ce que le mélange soit épais.
Mélanger le lait et le beurre fondu, y ajouter le mélange de farine et battre jusqu''à ce que le mélange soit homogène.
Couvrir et mettre au réfrigérateur pendant 2 heures.
Sur une planche farinée, étaler la pâte sur une épaisseur de 1 cm environ. Découper les donuts à l''aide d''un bol ou autre.
Mettre à frire pendant une minute ou jusqu''à ce soit légerement doré puis retourner a l''aide d''un écumoire de l''autre coté et laisser cuire à nouveau une minute.
Retirer de la friteuse et poser sur un papier absorbant.', 31),

('Houmous', '/imgs/houmous.webp', 'Mettre les pois chiches égouttés dans un mixeur. Mixer légèrement en ajoutant un peu d''eau de cuisson.
Ajouter le tahin, le jus de citron, l''ail, le cumin et le sel, et continuer de mixer en incorporant l''huile d''olive petit à petit jusqu''à obtenir une texture homogène et crémeuse.', 32),

('Vatrouchka', '/imgs/vatrouchka.jpg', 'Préchauffer le four à 150°C.
Séparer les blancs des jaunes d''œufs.
Faire tremper les raisins dans de l’eau tiède.
Mélanger au batteur les deux sortes de fromages blancs, la crème fraîche, les jaune d''œufs, le sucre et le sucre vanillé.
Ajouter le jus du citron, le beurre fondu, continuer à battre.
Égoutter les raisins. Monter les blancs en neige ferme. Incorporer la farine, les raisins et les blancs dans la préparation au fromage, en mélangeant au batteur à petite vitesse.
Beurrer un moule rond d''environ 23 cm de diamètre... Et verser la préparation.
Enfourner. Laisser cuire entre 50 et 60 minutes. Vérifier la cuisson avec une lame de couteau : celle-ci, enfonçée dans le gâteau, doit ressortir à peine sèche.', 33),

('Pizza pepperonni', '/imgs/pizza.webp', 'Préchauffer le four à 250 °C
Eplucher l''oignon et l''ail et faire suer dans un peu d''huile d''olive , saler, poivrer et débarrasser dans la cuve du blender.
Ajouter la purée de tomates et quelques feuilles de basilic. Mixer pour obtenir une sauce lisse.
Égoutter les boules de mozzarella et les couper en tranches.
Étaler la pâte à pizza sur une plaque allant au four. Répartir ensuite la sauce tomate sur une épaisseur de quelques millimètres, disposer les tranches de mozzarella.
Enfourner pendant 8 min. Sortir la pizza du four, déposer les tranches de pepperoni sur toute la surface et remettre au four 2 minutes.
Décorer de basilic frais et déguster chaud.', 34),

('Cheese cake', '/imgs/cheese-cake.jpg', 'Préchauffez le four à 180°C (thermostat 6). Tapissez de papier sulfurisé et préalablement beurré un moule de 23 cm de diamètre. Idéalement, le fond du moule doit être amovible, sinon, laissez bien dépasser le papier pour démouler facilement le gâteau en tirant dessus. Mélangez les biscuits, la muscade et le beurre fondu.
Tapissez le fond du moule de ce mélange en tassant bien avec le dos d''une cuillère. Placez au réfrigérateur.
Battez la faisselle au fouet jusqu''à ce qu''elle soit lisse, puis ajoutez le sucre et la farine et les oeufs un par un. Ajoutez ensuite la crème et le parfum de votre choix.
Versez cette préparation sur la croûte biscuitée (si la croûte dépasse de la crème, enlevez le surplus à la cuillère, cela risque de brûler).
Enfournez pour 50-55 minutes de cuisson jusqu''à ce que la préparation au fromage soit ferme au toucher.
Laissez refroidir, démoulez et servez frais.', 32),

('Muffin', '/imgs/muffin.jpg', 'Préchauffer le four à 200°c. Beurrer les moules.
Faire fondre le beurre, y ajouter le lait puis l''oeuf battu. Bien mélanger.
Dans un saladier, mettre la farine, le sucre, la levure et le sel puis y incorporer la préparation liquide.
Bien mélanger jusqu''à l''obtention d''une pâte bien lisse.
Couper le chocolat en pépites et les ajouter à la pâte.
Remplir les moules au 3/4 et enfourner pendant 18 minutes environ. Attendre quelques minutes avant de démouler.', 35),

('Lait de pavot', '/imgs/lait-pavot.webp', 'Placer les graines de pavot dans un petit bol et couvrir d''eau froide. Laisser tremper au moins trois heures.
Filtrez et placez les graines de pavot trempées dans un mélangeur, avec 4 tasses d''eau filtrée, la vanille et l''édulcorant.
Mélanger pendant environ 5 minutes, ou jusqu''à ce que les graines libèrent leur lait.
Passer dans une étamine ou dans un sac de lait de noix à mailles fines.
Vous pouvez diluer le lait selon vos goûts personnels. Le lait de graines de pavot se conserve dans une bouteille en verre, au réfrigérateur jusqu''à 2 semaines. Bien agiter avant utilisation.', 6),

('Gâteau renversé annanas', '/imgs/gateau-ananas.jpg', 'Préchauffer le four à 180°C.
Dans un saladier, mélanger le beurre ramolli avec le sucre et le sucre vanillé.
Ajouter les œufs un à un en mélangeant bien à chaque ajout.
Ajouter la farine tamisée et la levure et mélanger.
Dans une poêle, faites votre caramel : laisser le sucre fondre (sans eau) puis caraméliser. Il doit devenir bien ambré.
Le verser dans le moule puis l''incliner pour le tapisser de caramel. Ajouter les rondelles d''ananas.
S''il vous reste de l''ananas, le mettre en petits morceaux dans la pâte.
Verser la pâte à gâteau dans le moule et enfourner pour 30 à 40 min.
Démouler le gâteau. Vous pouvez éventuellement l''imbiber du jus d''ananas que vous aurez dans votre boîte d''ananas.', 35),

('Fajitas', '/imgs/fajitas.jpg', 'Préparez tout d''abord les tortillas : mélangez les 2 farines avec du sel, creusez une fontaine et ajoutez l’eau. Mélangez le tout, afin d''obtenir une pâte ferme, lisse, et très malléable. Laissez reposer 30 min environ (le temps de faire la préparation des fajitas...). Après le temps de repos, divisez la pâte en 8 boules de la grosseur d''une clémentine. Farinez le plan de travail et étendez délicatement la pâte avec un rouleau à pâtisserie bien fariné. Retournez la pâte d''un côté et de l''autre et farinez encore pour l''étendre finement. N''appuyez pas trop fort avec votre rouleau, afin que la pâte ne colle pas au plan de travail. Faites cuire chaque tortilla dans une poêle anti-adhésive très chaude, sans matière grasse, pendant 1 à 2 min. La pâte doit gonfler. Faites cuire l''autre côté. Afin que les tortillas ne se dessèchent pas une fois cuites, conservez-les dans un récipient fermé au-dessus d''une source de vapeur.
Pour la garniture de viande : faites revenir la viande hachée avec le 1/2 oignon et les épices. Ajoutez un peu d''eau et laissez mijoter.
Pour la garniture de crudités : émincez finement les tomates, le 1/2 concombre, le 1/2 oignon. Coupez en lamelles la salade verte. Préparez un guacamole ou de la crème fraîche, du comté râpé, et du sel ou du sumac.
Pour la sauce : mettez dans un robot mixeur tomates, concombre, poivron vert, oignon, persil plat, gousse d''ail, épices et sel selon vos goûts. Réajustez après avoir goûté si nécessaire.
Présentez sur votre table les fajitas (conservées dans un récipient fermé pour qu''elles restent moelleuses), la viande, les crudités, la sauce... Et chacun fait ce qui lui plait !', 36),

('Risotto aux champignons', '/imgs/risoto.webp', 'Il existe sur la toile deux écoles du risotto aux champignons, à savoir celle du champignon qui cuit dans le riz, et celle des champignons poêlés ajoutés à la dernière minute. Ayant longtemps pratiqué les deux recettes, je souhaitais vous communiquer la mienne :
Séparer les champignons en deux (préférer des cèpes) : une partie servira à élaborer le bouillon et cuira avec le riz. L''autre partie sera poêlé au dernier moment pour la présentation et mettre en avant le champignon tout en conservant une texture ferme. Emincer un petit peu d''ail, d''échalote et de persil séparément et réserver.
Nettoyer les champignons et les couper en morceaux.
Faire blondir dans une casserole un demi-oignon émincé dans un mélange de beurre et d''huile d''olive.
Ajouter et poêler les champignons.
Ajouter du bouillon de légume ou de poule (assez pour nourrir le risotto).
Laisser mijoter le bouillon pour qu''il s''imprègne bien du goût et des saveurs des champignons.
Chauffer une nouvelle casserole (qui accueillera le risotto), ajouter un peu d''huile d''olive et de beurre que vous ferez blondir.
Ajouter le riz carnaroli et remuer jusqu''à le rendre translucide (attention à la température, le riz ne doit pas coller).
Déglacer avec un verre de vin blanc sec. Continuer à remuer pour que le riz n''adhère pas et laisser réduire l''alcool.
Verser une louche de bouillon que vous avez laissé mijoter et continuer à remuer constamment jusqu''à l''absorption totale du riz.
Réitérer l''étape 11 jusqu''au point de cuisson (préférer al dente).
Juste avant la fin, faire fondre du beurre et un peu d''huile d''olive dans une poêle tout en remuant le risotto.
Faire blondir l''échalote émincée dans la poêle puis ajouter l''ail (attention à ne pas le brûler).
Faire poêler les champignons tout en remuant le risotto, assaisonner et ajouter le persil émincé en fin de cuisson avec un tour de moulin à poivre puis réserver.
Assaisonner le risotto juste avant la fin.
Ciseler du persil et en parsemer au dessus.
Dresser le riz dans des assiettes creuses. Placer soigneusement sur le haut les champignons poêlés.
Servir avec un tour de moulin à poivre et du parmesan.
Le gras du beurre va s''opposer au salé du parmesan et à l''amertume du cèpe en arrière plan. Les puristes privilégieront un rouge italien d''âge moyen avec une structure légère mais à la fois ronde et consistante. Personnellement, je préfère un blanc sec minéral un peu évolué au accent de sous-bois. Un bourgogne fera parfaitement l''affaire. Bon appétit', 37),

('Doubitchous', '/imgs/doubitchou.webp', 'Pétrir farine, cacao, margarine, huile cannelle et sucre
Faire des petits boudins grossiers, autour d''un morceau de chocolat
Cuire une quinzaine de minutes à 160°
Particularité de cette spécialité : au bout de 10mn, il faut reformer les boudins qui sont en train de s’étaler lamentablement…aidez-vous de 2 gros couteaux pour faire un étau vite fait.
Lorsque les doubitchous craquèlent, ils sont cuits.
Alors qu’ils sont encore chauds, saupoudrez de sucre glace, afin qu’il fonde et donne cet aspect bizarre et collant sur le biscuit.', 22),

('Liqueur d''échalotte relevée au jus d''ail', '/imgs/liqueur echalotte.jpg', 'Plus vous mettrez d''ail et d''échalotes, plus se sera fort!
Préparation de la recette Liqueur des bronzés
Peler les échalotes et les gousses d''ail, et les couper en petits morceaux. Ce sera plus facile, pour les passer par le goulot de la bouteille.
Mettre dans une bouteille, et recouvrir d''eau de vie. Laisser macérer.
Déguster, le jour où vous vous sentirez plein de courage!', 38);


COMMIT;