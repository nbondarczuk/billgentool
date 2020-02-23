--------------------------------------------------------
--  DDL for Index UC_BGH_INVOICE_GROUP_RULES_02
--------------------------------------------------------

  CREATE UNIQUE INDEX "BGH"."UC_BGH_INVOICE_GROUP_RULES_02" ON "BGH"."BGH_INVOICE_GROUP_RULES" ("RULE_SORT_ORDER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 122880 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BEN_LARGE" ;