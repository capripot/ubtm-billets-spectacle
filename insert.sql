-- -----------------------------------------------------------------------------
--       TABLE : BILLET_SPECTACLE
-- -----------------------------------------------------------------------------

INSERT INTO BILLET_SPECTACLE(NUM_SPECT,NUM_REPRESENTATION,NUM_BILLET,NUM_RESERVATION,
	LIB_CAT_SPECT,LIB_CAT,NUM_SALLE,NOM_POSITION,NUM_PLACE,RANG,PRIX) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : REGION
-- -----------------------------------------------------------------------------

INSERT INTO REGION(NOM_REGION) VALUES('Ile de France / Paris');
INSERT INTO REGION(NOM_REGION) VALUES('Nord');
INSERT INTO REGION(NOM_REGION) VALUES('Est');
INSERT INTO REGION(NOM_REGION) VALUES('Centre');
INSERT INTO REGION(NOM_REGION) VALUES('Grand Ouest');
INSERT INTO REGION(NOM_REGION) VALUES('Sud Est');
INSERT INTO REGION(NOM_REGION) VALUES('Sud Ouest');
INSERT INTO REGION(NOM_REGION) VALUES('Rhône Alpes');

-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE_SPECTACLE
-- -----------------------------------------------------------------------------

INSERT INTO CATEGORIE_SPECTACLE(NOM_CAT) VALUES('Concert');
INSERT INTO CATEGORIE_SPECTACLE(NOM_CAT) VALUES('Spectacle');
INSERT INTO CATEGORIE_SPECTACLE(NOM_CAT) VALUES('Théâtre');

-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE_PLACE
-- -----------------------------------------------------------------------------

INSERT INTO CATEGORIE_PLACE(LIB_CAT) VALUES('CAT1');
INSERT INTO CATEGORIE_PLACE(LIB_CAT) VALUES('CAT2');
INSERT INTO CATEGORIE_PLACE(LIB_CAT) VALUES('CAT3');
INSERT INTO CATEGORIE_PLACE(LIB_CAT) VALUES('FOSSE');

-- -----------------------------------------------------------------------------
--       TABLE : ARTISTE
-- -----------------------------------------------------------------------------

INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE,PRENOM_ARTISTE) VALUES(1,'Jonny','Hallyday');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE,PRENOM_ARTISTE) VALUES(2,'Lenny','Kravitz');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE,PRENOM_ARTISTE) VALUES(3,'Lady','Gaga');

-- -----------------------------------------------------------------------------
--       TABLE : REPRESENTATION
-- -----------------------------------------------------------------------------

INSERT INTO REPRESENTATION(NUM_SPECTACLE,NUM_REPRESENTATION,NUM_CONFIG,
	NUM_SALLE,DATE_REPRESENTATION,DATE_OUVERTURE_RESERVATION,
	NOM_SALLE,NOM_SPECTACLE) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : CLIENT
-- -----------------------------------------------------------------------------

INSERT INTO CLIENT(EMAIL_CLIENT,NOM_CLIENT,PRENOM_CLIENT,
	NUM_RUE_CLIENT,RUE_CLIENT,CP_CLIENT,VILLE_CLIENT,
	PASSWORD,ADMINISTRATEUR) VALUES('toto@utbm.fr','Joker','Toto',12,
	'rue des plaisanteries',31000,'Toulouse','haha',0);\
INSERT INTO CLIENT(EMAIL_CLIENT,NOM_CLIENT,PRENOM_CLIENT,
	NUM_RUE_CLIENT,RUE_CLIENT,CP_CLIENT,VILLE_CLIENT,
	PASSWORD,ADMINISTRATEUR) VALUES('ronan@utbm.fr','Potage','Ronan',123,
	'bd Anatole France',90000,'Belfort','sade',1);
INSERT INTO CLIENT(EMAIL_CLIENT,NOM_CLIENT,PRENOM_CLIENT,
	NUM_RUE_CLIENT,RUE_CLIENT,CP_CLIENT,VILLE_CLIENT,
	PASSWORD,ADMINISTRATEUR) VALUES('johan@utbm.fr','BoleBesancon','Johan',444,
	'rue de la residence',90000,'Belfort','johan',0);
INSERT INTO CLIENT(EMAIL_CLIENT,NOM_CLIENT,PRENOM_CLIENT,
	NUM_RUE_CLIENT,RUE_CLIENT,CP_CLIENT,VILLE_CLIENT,
	PASSWORD,ADMINISTRATEUR) VALUES('anais@utbm.fr','Brossas','Anais',700,
	'bd Anatole France',90000,'Belfort','anais',0);

-- -----------------------------------------------------------------------------
--       TABLE : PLACE_ASSISE
-- -----------------------------------------------------------------------------

INSERT INTO PLACE_ASSISE(NUM_SALLE,NOM_POSITION,NUM_PLACE,RANG,BLOC) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : PUBLICITE
-- -----------------------------------------------------------------------------

INSERT INTO PUBLICITE(NUM_PUB,NUM_SPECT,NOM_PUB,DATE_DEBUT_PUB,DATE_FIN_PUB) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : RESERVATION
-- -----------------------------------------------------------------------------

INSERT INTO RESERVATION(NUM_RESERVATION,EMAIL_CLIENT,DATE_RESERVATION,
	MONTANT_FACTURE,NUM_TRANSACTION,DATE_TRANSACTION) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : POSITION
-- -----------------------------------------------------------------------------

INSERT INTO POSITION(NUM_SALLE,NOM_POSITION,CAPACITE_DEBOUT,CAPACITE_ASSISE) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : SALLE_CONFIGUREE
-- -----------------------------------------------------------------------------

INSERT INTO SALLE_CONFIGUREE(NUM_CONFIG,NUM_SALLE,DESC_CONFIG) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : SALLE
-- -----------------------------------------------------------------------------

INSERT INTO SALLE(NUM_SALLE,NOM_REGION,NOM_SALLE,NUMERO_RUE_SALLE,
	RUE_SALLE,CP_SALLE,VILLE_SALLE,CAPACITE_MAX_SALLE,DESCRIPTION_SALLE) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : SPECTACLE
-- -----------------------------------------------------------------------------

INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) VALUES)();

-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE_SPECTATEUR_TARIF
-- -----------------------------------------------------------------------------

INSERT INTO CATEGORIE_SPECTATEUR_TARIF(LIB_CAT_SPECT) VALUES('NORMAL');
INSERT INTO CATEGORIE_SPECTATEUR_TARIF(LIB_CAT_SPECT) VALUES('SENIOR');
INSERT INTO CATEGORIE_SPECTATEUR_TARIF(LIB_CAT_SPECT) VALUES('ETUDIANT');
INSERT INTO CATEGORIE_SPECTATEUR_TARIF(LIB_CAT_SPECT) VALUES('SPECIAL');
INSERT INTO CATEGORIE_SPECTATEUR_TARIF(LIB_CAT_SPECT) VALUES('PROMOTION WEB');

-- -----------------------------------------------------------------------------
--       TABLE : CONFIGURER
-- -----------------------------------------------------------------------------

INSERT INTO CONFIGURER(NUM_CONFIG,NUM_SALLE,NOM_POSITION,NUM_PLACE,RANG,LIB_CAT) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : JOUER
-- -----------------------------------------------------------------------------

INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : CONFIGURER_NUMEROTE
-- -----------------------------------------------------------------------------

INSERT INTO CONFIGURER_NUMEROTE(NUM_CONFIG,NUM_SALLE,NOM_POSITION) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : TARIFER
-- -----------------------------------------------------------------------------

INSERT INTO TARIFER(NUM_SPECT,NUM_REPRESENTATION,LIB_CAT,LIB_CAT_SPECT,PRIX) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : AVOIR
-- -----------------------------------------------------------------------------

INSERT INTO AVOIR(NOM_GENRE,NUM_SPECT) VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : CONFIGURER_LIBRE
-- -----------------------------------------------------------------------------

INSERT INTO CONFIGURER_LIBRE(NUM_CONFIG,NUM_SALLE,NOM_POSITION,LIB_CAT) VALUES();

commit;