--------------------------------------------------------
--  DDL for Index I_BGH_SERVICE_VARIANT_01
--------------------------------------------------------

  CREATE INDEX "BGH"."I_BGH_SERVICE_VARIANT_01" ON "BGH"."BGH_SERVICE_VARIANT" ("SNSHDES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 32768 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BEN_LARGE" ;