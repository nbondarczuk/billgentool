--------------------------------------------------------
--  DDL for Trigger PTP_ON_INS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BGH"."PTP_ON_INS" 
  before insert on product_types
  for each row
declare
  -- local variables here
begin
    if inserting then
    	select PTP_MAX_ID.nextval into :NEW.PRODUCT_TYPE_ID from dual;
	end if;
end PTP_ON_INS;

/
ALTER TRIGGER "BGH"."PTP_ON_INS" ENABLE;
