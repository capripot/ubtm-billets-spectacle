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
INSERT INTO REGION(NOM_REGION) VALUES('Ouest');
INSERT INTO REGION(NOM_REGION) VALUES('Sud');

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

INSERT INTO PUBLICITE(NUM_PUB,NUM_SPECT,NOM_PUB,DATE_DEBUT_PUB,DATE_FIN_PUB) 
VALUES(1,1,'Pub le lac des signes','24/10/12','03/11/12');
INSERT INTO PUBLICITE(NUM_PUB,NUM_SPECT,NOM_PUB,DATE_DEBUT_PUB,DATE_FIN_PUB) 
VALUES(2,2,'Pub jonny hallyday','26/07/12','05/08/12');
INSERT INTO PUBLICITE(NUM_PUB,NUM_SPECT,NOM_PUB,DATE_DEBUT_PUB,DATE_FIN_PUB) 
VALUES(3,9,'Pub ils se re-aiment','19/07/12','25/07/12');
INSERT INTO PUBLICITE(NUM_PUB,NUM_SPECT,NOM_PUB,DATE_DEBUT_PUB,DATE_FIN_PUB) 
VALUES(4,7,'Pub florence foresti','11/06/12','30/06/12');

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

INSERT INTO SALLE_CONFIGUREE(NUM_CONFIG,NUM_SALLE,DESC_CONFIG) 
VALUES();

-- -----------------------------------------------------------------------------
--       TABLE : SALLE
-- -----------------------------------------------------------------------------

INSERT INTO SALLE(NUM_SALLE,NOM_REGION,NOM_SALLE,NUMERO_RUE_SALLE,
	RUE_SALLE,CP_SALLE,VILLE_SALLE,CAPACITE_MAX_SALLE,DESCRIPTION_SALLE) 
VALUES(1,'Sud','ZENITH OMEGA',,'bd Cdt Nicolas',83000,'TOULON','7500',
	'Extrêmement performant, le Zénith de Toulon bénéficie d\'une implantation très 
	stratégique : la gare voisine le place à 30 minutes de Marseille, 45 minutes 
	d\'Aix-en-Provence, 1 heure de Nice !
Le Zénith Oméga ouvre ses portes en 1972, et voit se succéder événements sportifs, 
rendez-vous culturels et économiques. Avec une capacité de 7500 places, dont 5350 assises,
 le Zénith Oméga demeure la plus grande salle de la région. 
Le Zénith de Toulon accueille des salons tels que le Salon du bien-être et médecines douces, 
des concerts de musique classique et de variété française (Michel Sardou, Johnny Hallyday, 
	Yannick Noah, Charles Aznavour), mais aussi des spectacles comiques');

INSERT INTO SALLE(NUM_SALLE,NOM_REGION,NOM_SALLE,NUMERO_RUE_SALLE,
	RUE_SALLE,CP_SALLE,VILLE_SALLE,CAPACITE_MAX_SALLE,DESCRIPTION_SALLE) 
VALUES(2,'Est','AXONE',6,'rue du commandant rossel',25200,'MONTBELIARD','5000',
	'L\'ensemble des partenaires de l\'Aire Urbaine Belfort-Montbéliard-Héricourt-Delle 
	a confié à la Communauté d\'Agglomération du Pays de Montbéliard, l\'édification de 
	l\'Axone, grand équipement culturel et sportif, à l\'échelle de son territoire.');

INSERT INTO SALLE(NUM_SALLE,NOM_REGION,NOM_SALLE,NUMERO_RUE_SALLE,
	RUE_SALLE,CP_SALLE,VILLE_SALLE,CAPACITE_MAX_SALLE,DESCRIPTION_SALLE) 
VALUES(3,'Ile de France / Paris','PALAIS OMNISPORT DE PARIS BERCY',8,'bd de Bercy',75012,'PARIS','17000',
	'C\'est en 1983 que la construction du Palais omnisports de paris Bercy s\'achève, 
	dévoilant un ouvrage colossal et unique. La salle possède en effet jusqu\'à 17 000 
	places dans sa capacité maximale. La conception architecturale du Palais omnisports 
	de paris Bercy permet une visibilité parfaite de chacune des places puisqu\'il n\'y 
	a aucun poteau porteur dans les gradins : une vraie prouesse technique ! L\'extérieur
	 est lui parfaitement reconnaissable au premier coup d\'oeil grâce à sa structure 
	 pyramidale et ses parois en pente recouvertes de pelouse.');

INSERT INTO SALLE(NUM_SALLE,NOM_REGION,NOM_SALLE,NUMERO_RUE_SALLE,
	RUE_SALLE,CP_SALLE,VILLE_SALLE,CAPACITE_MAX_SALLE,DESCRIPTION_SALLE) 
VALUES(4,'Sud','ARENES DE NIMES',,'Rd point des Arenes',30000,'Nimes','23000',
	'De la même forme ovale que le Colisée de Rome, l’amphithéâtre de Nîmes, 
	construit à la fin du Ier siècle après J.-C., est composé de deux niveaux 
	de soixante arcades superposées ainsi que d’un attique.  A l’époque antique, 
	plus de 23 000 personnes pouvaient prendre place sur les gradins des arènes 
	de Nîmes pour assister à des chasses ou à des combats d’animaux ou de gladiateurs. ');

-- -----------------------------------------------------------------------------
--       TABLE : SPECTACLE
-- -----------------------------------------------------------------------------

INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(1,'Spectacle','Le lac des signes','24/10/12','09/04/13');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(2,'Concert','Jonny Hallyday','26/07/12','22/12/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(3,'Concert','Lenny kravitz','05/07/12','09/08/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(4,'Concert','Lady Gaga','22/09/12','04/10/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(5,'Concert','Guns N\'Roses','05/07/12','01/09/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(6,'Concert','Radiohead','10/07/12','16/10/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(7,'Spectacle','Florence Foresti','15/07/12','23/09/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(8,'Spectacle','Dracula','26/07/12','04/08/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(9,'Théâtre','Ils se re-aiment','23/07/12','07/06/13');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(10,'Théâtre','Les chevaliers du fiel','01/07/12','12/12/12');
INSERT INTO SPECTACLE(NUM_SPECT,NOM_CAT,NOM_SPECT,DATE_DEBUT_SPECT,DATE_FIN_SPECT) 
VALUES)(11,'Théâtre','Voca people','01/07/12','24/05/13');

-- -----------------------------------------------------------------------------
--       TABLE : ARTISTE
-- -----------------------------------------------------------------------------

INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(1,'Jonny Hallyday');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(2,'Lenny Kravitz');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(3,'Lady Gaga');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(4,'Axi Rose');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(5,'Thom Yorke');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(6,'Phil Selway');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(7,'Florence Foresti');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(8,'Marius Petipa');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(9,'Lev Ivanov');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(10,'Konstantin Sergueev');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(11,'Pitor Tchaikovski');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(12,'Ron Thal');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(13,'Tommy Stinson');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(14,'Frank Ferrer');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(15,'Jonny Greenwood');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(16,'Colin Greenwood');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(17,'Golan Yosef');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(18,'Nathalie Fauquette');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(19,'Gregory Deck');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(20,'Lola Ces');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(21,'Pierre Palmade');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(22,'Michele Laroque');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(23,'Eric Carriere');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(24,'Francis Ginibre');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(25,'Eyal Cohen');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(26,'Shimon Smith');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(27,'Moran Sofer');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(28,'Naama Levy');
INSERT INTO ARTISTE(NUM_ARTISTE,NOM_ARTISTE) VALUES(29,'Ofir Tal');
-- -----------------------------------------------------------------------------
--       TABLE : JOUER
-- -----------------------------------------------------------------------------

INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(1,8);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(1,9);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(1,10);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(1,11);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(2,1);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(3,2);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(4,3);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(5,4);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(5,12);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(5,13);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(5,14);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(6,5);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(6,15);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(6,16);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(6,6);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(7,7);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(8,17);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(8,18);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(8,19);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(8,20);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(9,21);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(9,22);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(10,23);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(10,24);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(11,25);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(11,26);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(11,27);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(11,28);
INSERT INTO JOUER(NUM_SPECT,NUM_ARTISTE) VALUES(11,29);

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