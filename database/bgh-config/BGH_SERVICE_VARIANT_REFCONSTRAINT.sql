--------------------------------------------------------
--  Ref Constraints for Table BGH_SERVICE_VARIANT
--------------------------------------------------------

  ALTER TABLE "BGH"."BGH_SERVICE_VARIANT" ADD CONSTRAINT "FK_BGH_SERVICE_VARIANT" FOREIGN KEY ("VARIANT")
	  REFERENCES "BGH"."PRODUCTS_VARIANT" ("VARIANT_SHDES") ENABLE;
