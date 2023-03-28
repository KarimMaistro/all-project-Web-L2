-- CREATE DATABASE projetDevWeb ;

CREATE TABLE inscrition(
    Id_inscrition SERIAL PRIMARY KEY,
    username VARCHAR(40) NOT NULL,
    Passwod VARCHAR(40) NOT NULL,
    Ttype VARCHAR(40) NOT NULL
);

CREATE TABLE enseignant (
    Id_enseig SERIAL PRIMARY KEY,
    Nom_enseig VARCHAR(40) NOT NULL,
    Prenom_enseig VARCHAR(40) NOT NULL,
    Aaddress_enseig VARCHAR(100) NOT NULL,
    grad_enseig VARCHAR(10),
    Id_inscrition serial primary key,
    Id_inscrition FOREIGN key(Id_inscrition) REFERENCES(inscrition);
);

CREATE TABLE theme (
    Id_theme SERIAL PRIMARY KEY,
    intitule VARCHAR(200) NOT NULL,
    Id_enseig SERIAL NOT NULL,
    CONSTRAINT enseignant_theme FOREIGN KEY (Id_enseig) REFERENCES enseignant (Id_enseig)
);

CREATE TABLE etudiant (
    Id_Etud SERIAL PRIMARY KEY,
    Nom_Etud VARCHAR(40) NOT NULL,
    Prenom_Etud VARCHAR(40) NOT NULL,
    date_naissance_Etud DATE NOT NULL,
    Aaddress_Etud VARCHAR(100) NOT NULL,
    option_Etud VARCHAR(50) NOT NULL,
    Id_enseig SERIAL NOT NULL,
    CONSTRAINT enseignant_etudiant FOREIGN KEY (Id_enseig) REFERENCES enseignant (Id_enseig),
    Id_theme SERIAL NOT NULL,
    CONSTRAINT theme_etudiant FOREIGN KEY (Id_theme) REFERENCES theme (Id_theme),
    Id_inscrition SERIAL NOT NULL,
    CONSTRAINT inscrition_etudiant FOREIGN KEY (Id_inscrition) REFERENCES inscrition (Id_inscrition)
);

/**************************************************************************************************************/
INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('slimene','bennabi','23/2/2002','slimenebennabi@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('amine','djelad','22/5/2002','aminedjelad@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('ahmed','betchim','12/12/2003','ahmedbetchim@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('fouad','derbouz','02/6/2002','fouadderbouz@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('wafaa','rebib','17/11/2002','wafaarebib@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('imene','belhadi','10/01/2003','imenebelhadi@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('youcef','mchaal','28/10/2003','youcefmchaal@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('fatima','benahmed','16/4/2002','fatimabenahmed@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('bilal','moslim','23/2/2002','bilelmoslim@gmail.com');

INSERT INTO etudiant(Nom_Etud,Prenom_Etud,date_naissance_Etud,Aaddress_Etud)
VALUES('nihel','bentaleb','18/8/2003','nihelbentaleb@gmail.com');

/**************************************************************************************************************/

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('Boughrara','asma.bough@gmail.com','MCB');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('BENHADDOUCHE','benhaddouche.djamila@gmail.com','MCB');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('BAGDADI','le.bagdadi@gmail.com','MAA');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('Belbachir','Belbachir_khadidja@yahoo.fr','MCB');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('FERHANE','belsemb@yahoo.fr','MAA');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('Agha Benlalam','aghabenlalamz@yahoo.fr','MAA');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('ALNAFIE','amazad@hotmail.fr','MCB');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('SAHRAOUI','malikasahraoui786@YAHOO.FR','MAA');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('MENAD','nadia.menad@gmail.com','MCB');

INSERT INTO enseignant(Nom_enseig,Aaddress_enseig,grad_enseig)
VALUES ('ZENNAKI','mzennaki@yahoo.fr','MCB');

/**************************************************************************************************************/

INSERT INTO theme(intitule)
VALUES('Jeux Multijoueurs sur le Web');

INSERT INTO theme(intitule)
VALUES('Algorithmes Animés');

INSERT INTO theme(intitule)
VALUES('Gestion de magasin d''optique');

INSERT INTO theme(intitule)
VALUES('La signature numérique pour la sécurité');

INSERT INTO theme(intitule)
VALUES('Développement d''un jeu: le jeu du moulin');

INSERT INTO theme(intitule)
VALUES('Un site web pour la vente en ligne avec un système d''évaluation');

INSERT INTO theme(intitule)
VALUES('Développement d''une application :comparateur de prix');

INSERT INTO theme(intitule)
VALUES('Conception d''un site web pour une agence e voyage');

INSERT INTO theme(intitule)
VALUES('Réalisation d''un site web pour un restaurant');

INSERT INTO theme(intitule)
VALUES('Réalisation d''un site web pour le suivi d''un animal domestique');

/**************************************************************************************************************/

/**************************************************************************************************************/
