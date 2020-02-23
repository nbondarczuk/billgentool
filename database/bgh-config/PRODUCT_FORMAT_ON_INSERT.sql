--------------------------------------------------------
--  DDL for Trigger PRODUCT_FORMAT_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BGH"."PRODUCT_FORMAT_ON_INSERT" 
  BEFORE INSERT ON BGH.PRODUCT_FORMAT
  FOR EACH ROW
BEGIN
  IF INSERTING THEN
    SELECT PRODUCT_FORMAT_MAX_ID.NEXTVAL INTO :NEW.FORMAT_ID FROM DUAL;
	END IF;
END PRODUCT_FORMAT_ON_INSERT;

/
ALTER TRIGGER "BGH"."PRODUCT_FORMAT_ON_INSERT" ENABLE;