--------------------------------------------------------
--  Ref Constraints for Table BGH_INVOICE_GROUP_RULES
--------------------------------------------------------

  ALTER TABLE "BGH"."BGH_INVOICE_GROUP_RULES" ADD FOREIGN KEY ("GROUP_ID")
	  REFERENCES "BGH"."BGH_INVOICE_GROUPS" ("GROUP_ID") ENABLE;
  ALTER TABLE "BGH"."BGH_INVOICE_GROUP_RULES" ADD FOREIGN KEY ("VARIANT_RULE")
	  REFERENCES "BGH"."PRODUCTS_VARIANT" ("VARIANT_SHDES") ENABLE;
