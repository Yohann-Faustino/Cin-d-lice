
import bcrypt from 'bcrypt';
import User from '../models/Utilisateur.js';
import validator from 'validator';
import crypto from 'node:crypto';
// export const users = [];   

const authController = {
    
    login: (req,res)=>{
        res.render('signup', {titre: " Ciné Délice - Inscription/Connexion"});
    },
    
    loginAction: async(req,res)=>{
        const formData = req.body;                                                            // On commence par récupérer les données du formulaire
        // On cherche dans notre "base de données", un utilisateur dont l'email est égal à l'email fournit dans les données du formulaire
        
        try {
            const foundUser = await User.findOne({ where: { email: formData.email } });

            if(foundUser) {                                                                       // Si on trouve quelqu'un, c'est que l'utilisateur existe bien
            bcrypt.compare(formData.password, foundUser.mot_de_passe, function(err, result) {       // On compare le mot de passe du formulaire avec le hash du mot de passe de l'utilisateur (stocké en "base de données")
                if (result) {                                                                     // Si le password fournit matche avec le hash sauvegardé, c'est que le client nous a envoyé le bon mot de passe
                req.session.isLogged = true;                                                    // On ajoute une information dans la session
                // res.locals.isLogged = true;                                                    // On ajoute une information dans la session
                req.session.user = foundUser;
                // res.locals.user = req.session.user;                                              
                // On ajoute également son email dans la session
                // res.redirect('/');   //page home                                                           
                // Puis on le redirige vers la page d'accueil
                res.redirect('/');
                // res.render('home', {titre: " Ciné Délice - Accueil"} );   //page home                                                           // Puis on le redirige vers la page d'accueil
                }
                else {                                                                            // Sinon (dans le cas où le mot de passe est faux)
                res.render('signup', { titre: " Ciné Délice - Inscription/Connexion", alert: 'Mauvais identifiant/mot de passe' });      // On recharge la page "login", mais en passant cette fois un message d'alerte
                }
            });
            } else {                                                                              // Si le compte demandé n'existe pas
            res.render('signup', { titre: " Ciné Délice - Inscription/Connexion", alert: 'Mauvais identifiant/mot de passe' });        
            // On renvoie la page login, avec un message d'alerte ambigue pour éviter qu'une personne malveillante puisse deviner qui est inscrit ou pas sur notre site
            }
        } catch (error) {
            // que fait-on dans le cas où la requête à la bdd rencontre un soucis ?
            console.error(error);
            res.render('signup', {  titre: " Ciné Délice - Inscription/Connexion" , message: 'Une erreur est survenue lors de la création du compte.' });
        }
    },

    logout:(req, res)=> {
        req.session.destroy();                                                         
         // Si la personne se déconnecte, on détruit la session
        res.redirect('/');  
    },
    
    inscriptionAction: async (req, res) => {
        try {
            const formData = req.body;
            console.log('form data', formData)
            // requête Sequelize pour vérifier si l'utilisateur existe déjà en base de données (par email)
            if (formData.email) {
                console.log('je suis dans le if', formData.email)
                // vérifier que l'email a bien un format d'email avec validator
                // pas oublier d'importer validator
                // xxxxxx

                function vérifierEmail(email) {
                    return validator.isEmail(email);
                }
                
                // Exemple d'utilisation
                const email = "formData.emai";
                if (vérifierEmail(email)) {
                    console.log("L'email a un format valide.");
                } else {
                    console.log("L'email n'a pas un format valide.");
                }

                if (!vérifierEmail(formData.email)) return res.render('signup', { titre: " Ciné Délice - Inscription/Connexion", message: 'L\'email n\'est pas valide' });
                
// pas toucher


                const user = await User.findOne({ where: { email: formData.email } });
                console.log('user existe déjà en bdd', user);
                if (user) {
                    return res.render('signup', { titre: " Ciné Délice - Inscription/Connexion", message: 'Email déjà utilisé.' });
                }
//                 } else {
                    //  bcrypt
                    // vérifier que le mot de passe proposé et la confirmation de mot de passe sont identiques
                    // formData.password === formData.confirmed-password
                    // avec validator vérifier que le mot de passe a bien le format escompté (regexp => 12 caractères minium, au moins 1 chiffres, 1 caractère spécial, 1 majuscule et 1 minuscule)
                    // xxx
 // Fonction pour vérifier le format du mot de passe
 function vérifierMotDePasse(motDePasse) {
    // Configuration pour un mot de passe fort : au moins 12 caractères, 1 chiffre, 1 caractère spécial, 1 majuscule et 1 minuscule
    const options = {
        minLength: 12,
        minLowercase: 1,
        minUppercase: 1,
        minNumbers: 1,
        minSymbols: 1,
        returnScore: false, // Ne pas retourner le score de force du mot de passe
    };
    return validator.isStrongPassword(motDePasse, options);
}

// Fonction pour vérifier si les deux mots de passe sont identiques
function vérifierCorrespondanceMotsDePasse(motDePasse, confirmationMotDePasse) {
    return motDePasse === confirmationMotDePasse;
}

// Exemple d'utilisation
// const formData = {
//     password: "MotDePasse1!",
//     confirmedPassword: "MotDePasse1!"
// };

if (vérifierMotDePasse(formData.password)) {
    console.log("Le format du mot de passe est correct.");
    if (vérifierCorrespondanceMotsDePasse(formData.password, formData['confirmed-password'])) {
        console.log("Les mots de passe correspondent.");
    } else {
        console.log("Les mots de passe ne correspondent pas.");
    }
} else {
    console.log("Le format du mot de passe est incorrect.");
}



                    if(vérifierMotDePasse(formData.password) && vérifierCorrespondanceMotsDePasse(formData.password, formData['confirmed-password'])){
// pas toucher
                        console.log('les mots de passes sont conformes, on va hashé le password et créer le user')
                    const hashedPassword = await bcrypt.hash(formData.password, 10); // Le 10 détermine combien de fois l'algorithme de hachage sera exécuté sur le mot de passe

                    // Requête Sequelize pour ajouter l'utilisateur en base de données
                    const newUser = await User.create({
                        prenom: formData.firstname,
                        nom: formData.lastname,
                        pseudo: formData.pseudo,
                        email: formData.email,
                        mot_de_passe: hashedPassword
                    });
                    console.log('newUser', newUser);
                    res.redirect('/login');
                }else{
                    res.render('signup', {  titre: " Ciné Délice - Inscription/Connexion" , message: 'Le mot de passe doit contenir au moins 12 caractère, une majuscule, une minuscule, un nombre et un caractère spécial. ' });
                }
            } else {
                res.render('signup', {  titre: " Ciné Délice - Inscription/Connexion" , message: 'Merci de remplir tous les champs' });
            }
        } catch (error) {
            console.error(error);
            res.render('signup', {  titre: " Ciné Délice - Inscription/Connexion" , message: 'Une erreur est survenue lors de la création du compte.' });
        }
    },

    
   
    
    forgot: async (req, res) => {
        // Extraire l'adresse email du corps de la requête
        const  email  = req.body;

        // Générer un token unique de 20 octets et le convertir en une chaîne hexadécimale
        const token = crypto.randomBytes(20).toString('hex');
    
        // Trouver l'utilisateur par son adresse email dans la base de données
        const user = await User.findOne({ email });
        if (!user) {
            // Si aucun utilisateur n'est trouvé, renvoyer une réponse avec un statut 400 et un message d'erreur
            return res.status(400).send('Aucun utilisateur trouvé avec cette adresse e-mail.');
        }
    
        // Définir le token de réinitialisation et la date d'expiration (1 heure à partir de maintenant)
        user.resetPasswordToken = token;
        user.resetPasswordExpires = Date.now() + 3600000; // 1 heure en millisecondes
    
        // Sauvegarder les modifications apportées à l'utilisateur dans la base de données
        await user.save();
    
        // Créer un transporteur pour envoyer des emails via Gmail
        const transporter = nodemailer.createTransport({
            service: 'Gmail',
            auth: {
                user: 'votre-email@gmail.com', // Adresse email de l'expéditeur
                pass: 'votre-mot-de-passe-email', // Mot de passe de l'expéditeur
            },
        });
    
        // Définir les options de l'email
        const mailOptions = {
            to: user.email, // Adresse email du destinataire
            from: 'votre-email@gmail.com', // Adresse email de l'expéditeur
            subject: 'Réinitialisation du mot de passe', // Sujet de l'email
            text: `Vous recevez cet e-mail parce que vous (ou quelqu'un d'autre) avez demandé la réinitialisation du mot de passe de votre compte.\n\n
                   Veuillez cliquer sur le lien suivant, ou copiez-le dans votre navigateur pour compléter le processus :
                   http://${req.headers.host}/reset/${token}
                   Si vous n'avez pas demandé ceci, veuillez ignorer cet e-mail et votre mot de passe restera inchangé.`, // Corps du message
        };
    
        // Envoyer l'email avec les options définies
        transporter.sendMail(mailOptions, (err) => {
            if (err) {
                // Si une erreur se produit lors de l'envoi de l'email, renvoyer une réponse avec un statut 500 et un message d'erreur
                return res.status(500).send('Erreur lors de l\'envoi de l\'email');
            }
            // Si l'email est envoyé avec succès, renvoyer une réponse avec un statut 200 et un message de succès
            res.status(200).send('Lien de réinitialisation du mot de passe envoyé à l\'adresse e-mail');
        });
    },

    token: async (req, res) => {
        // Rechercher un utilisateur dans la base de données en fonction du token de réinitialisation
        // et vérifier que le token n'a pas expiré
        const user = await User.findOne({
            resetPasswordToken: req.params.token, // Token de réinitialisation fourni dans l'URL
            resetPasswordExpires: { $gt: Date.now() }, // La date d'expiration doit être supérieure à la date actuelle
        });
    
        // Si aucun utilisateur n'est trouvé ou si le token a expiré, renvoyer une erreur 400
        if (!user) {
            return res.status(400).send('Le token de réinitialisation de mot de passe est invalide ou a expiré.');
        }
    
        // Si un utilisateur valide est trouvé, rendre la page 'reset-password' en passant le token en paramètre
        res.render('forgotPassword', {titre: " Ciné Délice - Mot de passe oublié", token: req.params.token });
    },
    
    token2: async (req, res) => {
        // Rechercher un utilisateur dans la base de données en fonction du token de réinitialisation
        // et vérifier que le token n'a pas expiré
        const user = await User.findOne({
            resetPasswordToken: req.params.token, // Token de réinitialisation fourni dans l'URL
            resetPasswordExpires: { $gt: Date.now() }, // La date d'expiration doit être supérieure à la date actuelle
        })
    
        // Si aucun utilisateur n'est trouvé ou si le token a expiré, renvoyer une erreur 400
        if (!user) {
            return res.status(400).send('Le token de réinitialisation de mot de passe est invalide ou a expiré.');
        }
    
        // Vérifier si les champs de mot de passe et de confirmation de mot de passe correspondent
        if (req.body.password !== req.body.confirmedPassword) {
            return res.status(400).send('Les mots de passe ne correspondent pas.');
        }
    
        // Mettre à jour le mot de passe de l'utilisateur
        user.password = req.body.password; // N'oubliez pas de hacher le mot de passe avant de le sauvegarder
        user.resetPasswordToken = undefined; // Réinitialiser le token de réinitialisation
        user.resetPasswordExpires = undefined; // Réinitialiser la date d'expiration du token
    
        // Sauvegarder les modifications de l'utilisateur dans la base de données
        await user.save();
    
        // Envoyer une réponse 200 pour indiquer que le mot de passe a été réinitialisé avec succès
        res.status(200).send('Le mot de passe a été réinitialisé.');
    }
};


export default authController;

