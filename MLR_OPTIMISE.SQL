-- -----------------------------------------------------------------------------
--             Génération d'une base de données pour
--                      Oracle Version 10g
--                        (24/5/2012 17:47:06)
-- -----------------------------------------------------------------------------
--      Nom de la base : MLR1
--      Projet : Espace de travail
--      Auteur : j
--      Date de dernière modification : 24/5/2012 15:55:41
-- -----------------------------------------------------------------------------

DROP TABLE BILLET_SPECTACLE CASCADE CONSTRAINTS;

DROP TABLE REGION CASCADE CONSTRAINTS;

DROP TABLE CATEGORIE_SPECTACLE CASCADE CONSTRAINTS;

DROP TABLE CATEGORIE_PLACE CASCADE CONSTRAINTS;

DROP TABLE ARTISTE CASCADE CONSTRAINTS;

DROP TABLE REPRESENTATION CASCADE CONSTRAINTS;

DROP TABLE CLIENT CASCADE CONSTRAINTS;

DROP TABLE PLACE_ASSISE CASCADE CONSTRAINTS;

DROP TABLE PUBLICITE CASCADE CONSTRAINTS;

DROP TABLE RESERVATION CASCADE CONSTRAINTS;

DROP TABLE POSITION CASCADE CONSTRAINTS;

DROP TABLE SALLE_CONFIGUREE CASCADE CONSTRAINTS;

DROP TABLE SALLE CASCADE CONSTRAINTS;

DROP TABLE SPECTACLE CASCADE CONSTRAINTS;

DROP TABLE CATEGORIE_SPECTATEUR_TARIF CASCADE CONSTRAINTS;

DROP TABLE CONFIGURER CASCADE CONSTRAINTS;

DROP TABLE JOUER CASCADE CONSTRAINTS;

DROP TABLE CONFIGURER_NUMEROTE CASCADE CONSTRAINTS;

DROP TABLE TARIFER CASCADE CONSTRAINTS;

DROP TABLE AVOIR CASCADE CONSTRAINTS;

DROP TABLE CONFIGURER_LIBRE CASCADE CONSTRAINTS;

-- -----------------------------------------------------------------------------
--       TABLE : BILLET_SPECTACLE
-- -----------------------------------------------------------------------------

CREATE TABLE BILLET_SPECTACLE
   (
    NUM_SPECT NUMBER(6)  NOT NULL,
    NUM_REPRESENTATION NUMBER(6)  NOT NULL,
    NUM_BILLET NUMBER(6)  NOT NULL,
    NUM_RESERVATION NUMBER(6)  NOT NULL,
    LIB_CAT_SPECT CHAR(32)  NOT NULL,
    LIB_CAT CHAR(12)  NOT NULL,
    NUM_SALLE NUMBER(6)  NOT NULL,
    NOM_POSITION VARCHAR2(25)  NOT NULL,
    NUM_PLACE NUMBER(6)  NOT NULL,
    RANG CHAR(3)  NOT NULL,
    PRIX NUMBER(5,2)  NOT NULL
,   CONSTRAINT PK_BILLET_SPECTACLE PRIMARY KEY (NUM_SPECT, NUM_REPRESENTATION, NUM_BILLET)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : REGION
-- -----------------------------------------------------------------------------

CREATE TABLE REGION
   (
    NOM_REGION VARCHAR2(128)  NOT NULL
,   CONSTRAINT PK_REGION PRIMARY KEY (NOM_REGION)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE_SPECTACLE
-- -----------------------------------------------------------------------------

CREATE TABLE CATEGORIE_SPECTACLE
   (
    NOM_CAT VARCHAR2(25)  NOT NULL
,   CONSTRAINT PK_CATEGORIE_SPECTACLE PRIMARY KEY (NOM_CAT)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE_PLACE
-- -----------------------------------------------------------------------------

CREATE TABLE CATEGORIE_PLACE
   (
    LIB_CAT CHAR(12)  NOT NULL
,   CONSTRAINT PK_CATEGORIE_PLACE PRIMARY KEY (LIB_CAT)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : ARTISTE
-- -----------------------------------------------------------------------------

CREATE TABLE ARTISTE
   (
    NUM_ARTISTE NUMBER(6)  NOT NULL,
    NOM_ARTISTE VARCHAR2(25)  NOT NULL,
    PRENOM_ARTISTE VARCHAR2(25)  NOT NULL
,   CONSTRAINT PK_ARTISTE PRIMARY KEY (NUM_ARTISTE)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : REPRESENTATION
-- -----------------------------------------------------------------------------

CREATE TABLE REPRESENTATION
   (
    NUM_SPECT NUMBER(6)  NOT NULL,
    NUM_REPRESENTATION NUMBER(6)  NOT NULL,
    NUM_CONFIG NUMBER(6)  NOT NULL,
    NUM_SALLE NUMBER(6)  NOT NULL,
    DATE_REPRESENTATION DATE  NOT NULL,
    DATE_OUVERTURE_RESERVATION DATE  NULL,
    NOM_SALLE VARCHAR2(50)  NOT NULL,
    NOM_SPECTACLE VARCHAR2(50)  NOT NULL
,   CONSTRAINT PK_REPRESENTATION PRIMARY KEY (NUM_SPECT, NUM_REPRESENTATION)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CLIENT
-- -----------------------------------------------------------------------------

CREATE TABLE CLIENT
   (
    EMAIL_CLIENT VARCHAR2(25)  NOT NULL,
    NOM_CLIENT VARCHAR2(25)  NOT NULL,
    PRENOM_CLIENT VARCHAR2(25)  NOT NULL,
    NUM_RUE_CLIENT NUMBER(3)  NOT NULL,
    RUE_CLIENT VARCHAR2(50)  NOT NULL,
    CP_CLIENT NUMBER(5)  NOT NULL,
    VILLE_CLIENT VARCHAR2(25)  NOT NULL,
    PASSWORD VARCHAR2(50)  NOT NULL,
    ADMINISTRATEUR NUMBER(1)  NOT NULL
,   CONSTRAINT PK_CLIENT PRIMARY KEY (EMAIL_CLIENT)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : PLACE_ASSISE
-- -----------------------------------------------------------------------------

CREATE TABLE PLACE_ASSISE
   (
    NUM_SALLE NUMBER(6)  NOT NULL,
    NOM_POSITION VARCHAR2(25)  NOT NULL,
    NUM_PLACE NUMBER(6)  NOT NULL,
    RANG CHAR(3)  NOT NULL,
    BLOC CHAR(2)  NULL
,   CONSTRAINT PK_PLACE_ASSISE PRIMARY KEY (NUM_SALLE, NOM_POSITION, NUM_PLACE, RANG)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : PUBLICITE
-- -----------------------------------------------------------------------------

CREATE TABLE PUBLICITE
   (
    NUM_PUB NUMBER(6)  NOT NULL,
    NUM_SPECT NUMBER(6)  NOT NULL,
    NOM_PUB VARCHAR2(50)  NOT NULL,
    DATE_DEBUT_PUB DATE  NOT NULL,
    DATE_FIN_PUB DATE  NOT NULL
,   CONSTRAINT PK_PUBLICITE PRIMARY KEY (NUM_PUB)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : RESERVATION
-- -----------------------------------------------------------------------------

CREATE TABLE RESERVATION
   (
    NUM_RESERVATION NUMBER(6)  NOT NULL,
    EMAIL_CLIENT VARCHAR2(25)  NOT NULL,
    DATE_RESERVATION DATE  NULL,
    MONTANT_FACTURE NUMBER(10,2)  NULL,
    NUM_TRANSACTION NUMBER(12)  NULL,
    DATE_TRANSACTION DATE  NULL
,   CONSTRAINT PK_RESERVATION PRIMARY KEY (NUM_RESERVATION)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : POSITION
-- -----------------------------------------------------------------------------

CREATE TABLE POSITION
   (
    NUM_SALLE NUMBER(6)  NOT NULL,
    NOM_POSITION VARCHAR2(25)  NOT NULL,
    CAPACITE_DEBOUT NUMBER(5)  NOT NULL,
    CAPACITE_ASSISE NUMBER(5)  NOT NULL
,   CONSTRAINT PK_POSITION PRIMARY KEY (NUM_SALLE, NOM_POSITION)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : SALLE_CONFIGUREE
-- -----------------------------------------------------------------------------

CREATE TABLE SALLE_CONFIGUREE
   (
    NUM_CONFIG NUMBER(6)  NOT NULL,
    NUM_SALLE NUMBER(6)  NOT NULL,
    DESC_CONFIG VARCHAR2(128)  NULL
,   CONSTRAINT PK_SALLE_CONFIGUREE PRIMARY KEY (NUM_CONFIG)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : SALLE
-- -----------------------------------------------------------------------------

CREATE TABLE SALLE
   (
    NUM_SALLE NUMBER(6)  NOT NULL,
    NOM_REGION VARCHAR2(128)  NOT NULL,
    NOM_SALLE VARCHAR2(50)  NOT NULL,
    NUMERO_RUE_SALLE NUMBER(3)  NOT NULL,
    RUE_SALLE VARCHAR2(50)  NOT NULL,
    CP_SALLE NUMBER(5)  NOT NULL,
    VILLE_SALLE VARCHAR2(25)  NOT NULL,
    CAPACITE_MAX_SALLE NUMBER(10)  NOT NULL,
    DESCRIPTION_SALLE CLOB  NULL
,   CONSTRAINT PK_SALLE PRIMARY KEY (NUM_SALLE)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : SPECTACLE
-- -----------------------------------------------------------------------------

CREATE TABLE SPECTACLE
   (
    NUM_SPECT NUMBER(6)  NOT NULL,
    NOM_CAT VARCHAR2(25)  NOT NULL,
    NOM_SPECT VARCHAR2(50)  NOT NULL,
    DATE_DEBUT_SPECT DATE  NOT NULL,
    DATE_FIN_SPECT DATE  NOT NULL
,   CONSTRAINT PK_SPECTACLE PRIMARY KEY (NUM_SPECT)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE_SPECTATEUR_TARIF
-- -----------------------------------------------------------------------------

CREATE TABLE CATEGORIE_SPECTATEUR_TARIF
   (
    LIB_CAT_SPECT CHAR(32)  NOT NULL
,   CONSTRAINT PK_CATEGORIE_SPECTATEUR_TARIF PRIMARY KEY (LIB_CAT_SPECT)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CONFIGURER
-- -----------------------------------------------------------------------------

CREATE TABLE CONFIGURER
   (
    NUM_CONFIG NUMBER(6)  NOT NULL,
    NUM_SALLE NUMBER(6)  NOT NULL,
    NOM_POSITION VARCHAR2(25)  NOT NULL,
    NUM_PLACE NUMBER(6)  NOT NULL,
    RANG CHAR(3)  NOT NULL,
    LIB_CAT CHAR(12)  NOT NULL
,   CONSTRAINT PK_CONFIGURER PRIMARY KEY (NUM_CONFIG, NUM_SALLE, NOM_POSITION, NUM_PLACE, RANG)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : JOUER
-- -----------------------------------------------------------------------------

CREATE TABLE JOUER
   (
    NUM_SPECT NUMBER(6)  NOT NULL,
    NUM_ARTISTE NUMBER(6)  NOT NULL
,   CONSTRAINT PK_JOUER PRIMARY KEY (NUM_SPECT, NUM_ARTISTE)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CONFIGURER_NUMEROTE
-- -----------------------------------------------------------------------------

CREATE TABLE CONFIGURER_NUMEROTE
   (
    NUM_CONFIG NUMBER(6)  NOT NULL,
    NUM_SALLE NUMBER(6)  NOT NULL,
    NOM_POSITION VARCHAR2(25)  NOT NULL
,   CONSTRAINT PK_CONFIGURER_NUMEROTE PRIMARY KEY (NUM_CONFIG, NUM_SALLE, NOM_POSITION)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : TARIFER
-- -----------------------------------------------------------------------------

CREATE TABLE TARIFER
   (
    NUM_SPECT NUMBER(6)  NOT NULL,
    NUM_REPRESENTATION NUMBER(6)  NOT NULL,
    LIB_CAT CHAR(12)  NOT NULL,
    LIB_CAT_SPECT CHAR(32)  NOT NULL,
    PRIX NUMBER(5,2)  NOT NULL
,   CONSTRAINT PK_TARIFER PRIMARY KEY (NUM_SPECT, NUM_REPRESENTATION, LIB_CAT, LIB_CAT_SPECT)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : AVOIR
-- -----------------------------------------------------------------------------

CREATE TABLE AVOIR
   (
    NOM_GENRE VARCHAR2(25)  NOT NULL,
    NUM_SPECT NUMBER(6)  NOT NULL
,   CONSTRAINT PK_AVOIR PRIMARY KEY (NOM_GENRE, NUM_SPECT)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CONFIGURER_LIBRE
-- -----------------------------------------------------------------------------

CREATE TABLE CONFIGURER_LIBRE
   (
    NUM_CONFIG NUMBER(6)  NOT NULL,
    NUM_SALLE NUMBER(6)  NOT NULL,
    NOM_POSITION VARCHAR2(25)  NOT NULL,
    LIB_CAT CHAR(12)  NOT NULL
,   CONSTRAINT PK_CONFIGURER_LIBRE PRIMARY KEY (NUM_CONFIG, NUM_SALLE, NOM_POSITION, LIB_CAT)  
   ) ;


-- -----------------------------------------------------------------------------
--       CREATION DES REFERENCES DE TABLE
-- -----------------------------------------------------------------------------


ALTER TABLE BILLET_SPECTACLE ADD (
     CONSTRAINT FK_BILLET_SPECTACLE_RESERVATIO
          FOREIGN KEY (NUM_RESERVATION)
               REFERENCES RESERVATION (NUM_RESERVATION))   ;

ALTER TABLE BILLET_SPECTACLE ADD (
     CONSTRAINT FK_BILLET_SPECTACLE_REPRESENTA
          FOREIGN KEY (NUM_SPECT, NUM_REPRESENTATION)
               REFERENCES REPRESENTATION (NUM_SPECT, NUM_REPRESENTATION))   ;

ALTER TABLE BILLET_SPECTACLE ADD (
     CONSTRAINT FK_BILLET_SPECTACLE_CATEGORIE_
          FOREIGN KEY (LIB_CAT_SPECT)
               REFERENCES CATEGORIE_SPECTATEUR_TARIF (LIB_CAT_SPECT))   ;

ALTER TABLE BILLET_SPECTACLE ADD (
     CONSTRAINT FK_BILLET_SPECTACLE_CATEGORIE1
          FOREIGN KEY (LIB_CAT)
               REFERENCES CATEGORIE_PLACE (LIB_CAT))   ;

ALTER TABLE BILLET_SPECTACLE ADD (
     CONSTRAINT FK_BILLET_SPECTACLE_POSITION
          FOREIGN KEY (NUM_SALLE, NOM_POSITION)
               REFERENCES POSITION (NUM_SALLE, NOM_POSITION))   ;

ALTER TABLE BILLET_SPECTACLE ADD (
     CONSTRAINT FK_BILLET_SPECTACLE_PLACE_ASSI
          FOREIGN KEY (NUM_SALLE, NOM_POSITION, NUM_PLACE, RANG)
               REFERENCES PLACE_ASSISE (NUM_SALLE, NOM_POSITION, NUM_PLACE, RANG))   ;

ALTER TABLE REPRESENTATION ADD (
     CONSTRAINT FK_REPRESENTATION_SALLE_CONFIG
          FOREIGN KEY (NUM_CONFIG)
               REFERENCES SALLE_CONFIGUREE (NUM_CONFIG))   ;

ALTER TABLE REPRESENTATION ADD (
     CONSTRAINT FK_REPRESENTATION_SPECTACLE
          FOREIGN KEY (NUM_SPECT)
               REFERENCES SPECTACLE (NUM_SPECT))   ;

ALTER TABLE REPRESENTATION ADD (
     CONSTRAINT FK_REPRESENTATION_SALLE
          FOREIGN KEY (NUM_SALLE)
               REFERENCES SALLE (NUM_SALLE))   ;

ALTER TABLE PLACE_ASSISE ADD (
     CONSTRAINT FK_PLACE_ASSISE_POSITION
          FOREIGN KEY (NUM_SALLE, NOM_POSITION)
               REFERENCES POSITION (NUM_SALLE, NOM_POSITION))   ;

ALTER TABLE PUBLICITE ADD (
     CONSTRAINT FK_PUBLICITE_SPECTACLE
          FOREIGN KEY (NUM_SPECT)
               REFERENCES SPECTACLE (NUM_SPECT))   ;

ALTER TABLE RESERVATION ADD (
     CONSTRAINT FK_RESERVATION_CLIENT
          FOREIGN KEY (EMAIL_CLIENT)
               REFERENCES CLIENT (EMAIL_CLIENT))   ;

ALTER TABLE POSITION ADD (
     CONSTRAINT FK_POSITION_SALLE
          FOREIGN KEY (NUM_SALLE)
               REFERENCES SALLE (NUM_SALLE))   ;

ALTER TABLE SALLE_CONFIGUREE ADD (
     CONSTRAINT FK_SALLE_CONFIGUREE_SALLE
          FOREIGN KEY (NUM_SALLE)
               REFERENCES SALLE (NUM_SALLE))   ;

ALTER TABLE SALLE ADD (
     CONSTRAINT FK_SALLE_REGION
          FOREIGN KEY (NOM_REGION)
               REFERENCES REGION (NOM_REGION))   ;

ALTER TABLE SPECTACLE ADD (
     CONSTRAINT FK_SPECTACLE_CATEGORIE_SPECTAC
          FOREIGN KEY (NOM_CAT)
               REFERENCES CATEGORIE_SPECTACLE (NOM_CAT))   ;

ALTER TABLE CONFIGURER ADD (
     CONSTRAINT FK_CONFIGURER_SALLE_CONFIGUREE
          FOREIGN KEY (NUM_CONFIG)
               REFERENCES SALLE_CONFIGUREE (NUM_CONFIG))   ;

ALTER TABLE CONFIGURER ADD (
     CONSTRAINT FK_CONFIGURER_PLACE_ASSISE
          FOREIGN KEY (NUM_SALLE, NOM_POSITION, NUM_PLACE, RANG)
               REFERENCES PLACE_ASSISE (NUM_SALLE, NOM_POSITION, NUM_PLACE, RANG))   ;

ALTER TABLE CONFIGURER ADD (
     CONSTRAINT FK_CONFIGURER_CATEGORIE_PLACE
          FOREIGN KEY (LIB_CAT)
               REFERENCES CATEGORIE_PLACE (LIB_CAT))   ;

ALTER TABLE JOUER ADD (
     CONSTRAINT FK_JOUER_SPECTACLE
          FOREIGN KEY (NUM_SPECT)
               REFERENCES SPECTACLE (NUM_SPECT))   ;

ALTER TABLE JOUER ADD (
     CONSTRAINT FK_JOUER_ARTISTE
          FOREIGN KEY (NUM_ARTISTE)
               REFERENCES ARTISTE (NUM_ARTISTE))   ;

ALTER TABLE CONFIGURER_NUMEROTE ADD (
     CONSTRAINT FK_CONFIGURER_NUMEROTE_SALLE_C
          FOREIGN KEY (NUM_CONFIG)
               REFERENCES SALLE_CONFIGUREE (NUM_CONFIG))   ;

ALTER TABLE CONFIGURER_NUMEROTE ADD (
     CONSTRAINT FK_CONFIGURER_NUMEROTE_POSITIO
          FOREIGN KEY (NUM_SALLE, NOM_POSITION)
               REFERENCES POSITION (NUM_SALLE, NOM_POSITION))   ;

ALTER TABLE TARIFER ADD (
     CONSTRAINT FK_TARIFER_CATEGORIE_PLACE
          FOREIGN KEY (LIB_CAT)
               REFERENCES CATEGORIE_PLACE (LIB_CAT))   ;

ALTER TABLE TARIFER ADD (
     CONSTRAINT FK_TARIFER_REPRESENTATION
          FOREIGN KEY (NUM_SPECT, NUM_REPRESENTATION)
               REFERENCES REPRESENTATION (NUM_SPECT, NUM_REPRESENTATION))   ;

ALTER TABLE TARIFER ADD (
     CONSTRAINT FK_TARIFER_CATEGORIE_SPECTATEU
          FOREIGN KEY (LIB_CAT_SPECT)
               REFERENCES CATEGORIE_SPECTATEUR_TARIF (LIB_CAT_SPECT))   ;

ALTER TABLE AVOIR ADD (
     CONSTRAINT FK_AVOIR_SPECTACLE
          FOREIGN KEY (NUM_SPECT)
               REFERENCES SPECTACLE (NUM_SPECT))   ;

ALTER TABLE CONFIGURER_LIBRE ADD (
     CONSTRAINT FK_CONFIGURER_LIBRE_SALLE_CONF
          FOREIGN KEY (NUM_CONFIG)
               REFERENCES SALLE_CONFIGUREE (NUM_CONFIG))   ;

ALTER TABLE CONFIGURER_LIBRE ADD (
     CONSTRAINT FK_CONFIGURER_LIBRE_POSITION
          FOREIGN KEY (NUM_SALLE, NOM_POSITION)
               REFERENCES POSITION (NUM_SALLE, NOM_POSITION))   ;

ALTER TABLE CONFIGURER_LIBRE ADD (
     CONSTRAINT FK_CONFIGURER_LIBRE_CATEGORIE_
          FOREIGN KEY (LIB_CAT)
               REFERENCES CATEGORIE_PLACE (LIB_CAT))   ;


-- -----------------------------------------------------------------------------
--                FIN DE GENERATION
-- -----------------------------------------------------------------------------