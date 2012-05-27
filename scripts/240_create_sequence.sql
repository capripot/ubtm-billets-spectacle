DROP SEQUENCE SALLE_ID_SEQ;
DROP SEQUENCE SPECTACLE_ID_SEQ;
DROP SEQUENCE ARTISTE_ID_SEQ;
DROP SEQUENCE SALLE_CONFIGUREE_ID_SEQ;
DROP SEQUENCE PUBLICITE_ID_SEQ;
DROP SEQUENCE REPRESENTATION_ID_SEQ;
DROP SEQUENCE BILLET_SPECTACLE_ID_SEQ;
DROP SEQUENCE RESERVATION_ID_SEQ;
-- -----------------------------------------------------------------------------
--       TABLE : SALLE
-- -----------------------------------------------------------------------------

CREATE SEQUENCE SALLE_ID_SEQ INCREMENT BY 1;	

-- -----------------------------------------------------------------------------
--       TABLE : SPECTACLE
-- -----------------------------------------------------------------------------

CREATE SEQUENCE SPECTACLE_ID_SEQ INCREMENT BY 1;	

-- -----------------------------------------------------------------------------
--       TABLE : ARTISTE
-- -----------------------------------------------------------------------------

CREATE SEQUENCE ARTISTE_ID_SEQ INCREMENT BY 1;	

-- -----------------------------------------------------------------------------
--       TABLE : SALLE_CONFIGUREE
-- -----------------------------------------------------------------------------
CREATE SEQUENCE SALLE_CONFIGUREE_ID_SEQ INCREMENT BY 1;	

-- -----------------------------------------------------------------------------
--       TABLE : PUBLICITE
-- -----------------------------------------------------------------------------
CREATE SEQUENCE PUBLICITE_ID_SEQ INCREMENT BY 1;	

-- -----------------------------------------------------------------------------
--       TABLE : REPRESENTATION
-- -----------------------------------------------------------------------------
CREATE SEQUENCE REPRESENTATION_ID_SEQ INCREMENT BY 1;	

-- -----------------------------------------------------------------------------
--       TABLE : BILLET_SPECTACLE
-- -----------------------------------------------------------------------------
CREATE SEQUENCE BILLET_SPECTACLE_ID_SEQ INCREMENT BY 1;	

-- -----------------------------------------------------------------------------
--       TABLE : RESERVATION
-- -----------------------------------------------------------------------------
CREATE SEQUENCE RESERVATION_ID_SEQ INCREMENT BY 1;	
