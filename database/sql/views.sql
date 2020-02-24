CREATE OR REPLACE FORCE EDITIONABLE VIEW "BGH"."CHARGE_ITEM_PRODUCT_RULE" (
    "ID",
    "PRODUCT_ID",
    "CHARGE_TYPE",
    "TMCODE",
    "SPCODE",
    "SNCODE",
    "USAGE_INDICATOR",
    "ZNCODE",
    "TTCODE",
    "INFO1",
    "INFO2",
    "FORMAT",
    "DISPLAY_ZERO_CHARGE"
) AS
    SELECT
        id,
        product_id,
        charge_type,
        xtmcode,
        xspcode,
        sncode,
        usgind,
        zncode,
        rtid,
        info1,
        info2,
        format,
        display_zero_charge
    FROM
        bgh_charge_item_configuration;

CREATE OR REPLACE FORCE EDITIONABLE VIEW "BGH"."INVOICE_GROUP_VARIANT" (
    "ID",
    "VARIANT_SHDES",
    "SORT_ORDER",
    "DESC_NL",
    "DESC_EN",
    "FORMAT",
    "SHOWN"
) AS
    SELECT
        group_id,
        group_variant,
        group_sort_order,
        group_desc,
        group_desc_en,
        format,
        shown
    FROM
        bgh.bgh_invoice_groups;

CREATE OR REPLACE FORCE EDITIONABLE VIEW "BGH"."INVOICE_GROUP_VARIANT_RULE" (
    "ID",
    "GROUP_ID",
    "VARIANT_SHDES",
    "SORT_ORDER",
    "DESC",
    "AMOUNT_SIGN",
    "TMCODE",
    "SPCODE",
    "SNCODE"
) AS
    SELECT
        rule_id,
        group_id,
        variant_rule,
        rule_sort_order,
        desc_rule,
        sign_rule,
        tmshdes_rule,
        spshdes_rule,
        snshdes_rule
    FROM
        bgh_invoice_group_rules;

CREATE OR REPLACE FORCE EDITIONABLE VIEW "BGH"."PRODUCT_VARIANT" (
    "PRODUCT_ID",
    "VARIANT_ID",
    "DESC_NL",
    "DESC_EN",
    "BREAKDOWN_SHDES",
    "ROAMING_DETAILS",
    "BLOCK_ROUNDED"
) AS
    SELECT
        product_id,
        variant_id,
        product_desc,
        product_desc_en,
        breakdown_shdes,
        roaming_details,
        block_rounded
    FROM
        bgh.products;

CREATE OR REPLACE FORCE EDITIONABLE VIEW "BGH"."VARIANT" (
    "ID",
    "SHDES",
    "DES"
) AS
    SELECT
        variant_id,
        variant_shdes,
        variant_des
    FROM
        bgh.products_variant;

/

