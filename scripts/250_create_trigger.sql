-- -----------------------------------------------------------------------------
--       TABLE : SALLE
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER SALLE_PK_AUTOINCREMENT BEFORE INSERT ON SALLE FOR EACH ROW 
BEGIN
	IF :NEW.NUM_SALLE IS NULL THEN
		SELECT SALLE_ID_SEQ.NEXTVAL INTO :NEW.NUM_SALLE FROM DUAL;
	END IF;
END;
/
-- -----------------------------------------------------------------------------
--       TABLE : SPECTACLE
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER SPECTACLE_PK_AUTOINCREMENT BEFORE INSERT ON SPECTACLE FOR EACH ROW 
BEGIN
	IF :NEW.NUM_SPECT IS NULL THEN
		SELECT SPECTACLE_ID_SEQ.NEXTVAL INTO :NEW.NUM_SPECT FROM DUAL;
	END IF;
END;
/
-- -----------------------------------------------------------------------------
--       TABLE : ARTISTE
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER ARTISTE_PK_AUTOINCREMENT BEFORE INSERT ON ARTISTE FOR EACH ROW 
BEGIN
	IF :NEW.NUM_ARTISTE IS NULL THEN
		SELECT ARTISTE_ID_SEQ.NEXTVAL INTO :NEW.NUM_ARTISTE FROM DUAL;
	END IF;
END;
/
-- -----------------------------------------------------------------------------
--       TABLE : SALLE_CONFIGUREE
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER SALLE_CONFIG_PK_AUTOINCREMENT BEFORE INSERT ON SALLE_CONFIGUREE FOR EACH ROW 
BEGIN
	IF :NEW.NUM_CONFIG IS NULL THEN
		SELECT SALLE_CONFIGUREE_ID_SEQ.NEXTVAL INTO :NEW.NUM_CONFIG FROM DUAL;
	END IF;
END;
/
-- -----------------------------------------------------------------------------
--       TABLE : PUBLICITE
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER PUB_PK_AUTOINCREMENT BEFORE INSERT ON PUBLICITE FOR EACH ROW 
BEGIN
	IF :NEW.NUM_PUB IS NULL THEN
		SELECT PUBLICITE_ID_SEQ.NEXTVAL INTO :NEW.NUM_PUB FROM DUAL;
	END IF;
END;
/
-- -----------------------------------------------------------------------------
--       TABLE : REPRESENTATION
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER REPRES_PK_AUTOINCREMENT BEFORE INSERT ON REPRESENTATION FOR EACH ROW 
BEGIN
	IF :NEW.NUM_REPRESENTATION IS NULL THEN
		SELECT REPRESENTATION_ID_SEQ.NEXTVAL INTO :NEW.NUM_REPRESENTATION FROM DUAL;
	END IF;
END;
/

-- -----------------------------------------------------------------------------
--       TABLE : BILLET_SPECTACLE
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER BILLET_SPEC_PK_AUTOINCREMENT BEFORE INSERT ON BILLET_SPECTACLE FOR EACH ROW 
BEGIN
	IF :NEW.NUM_BILLET IS NULL THEN
		SELECT BILLET_SPECTACLE_ID_SEQ.NEXTVAL INTO :NEW.NUM_BILLET FROM DUAL;
	END IF;
END;
/
-- -----------------------------------------------------------------------------
--       TABLE : RESERVATION
-- -----------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER RESERVATION_PK_AUTOINCREMENT BEFORE INSERT ON RESERVATION FOR EACH ROW 
BEGIN
	IF :NEW.NUM_RESERVATION IS NULL THEN
		SELECT RESERVATION_ID_SEQ.NEXTVAL INTO :NEW.NUM_RESERVATION FROM DUAL;
	END IF;
END;
/