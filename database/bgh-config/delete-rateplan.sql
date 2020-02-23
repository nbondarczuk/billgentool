delete rateplan where shdes = '';
delete mpulknxg where tmcode in (select tmcode from rateplan where shdes = '');
delete rateplan_version where tmcode in (select tmcode from rateplan where shdes = '');
delete mpulktmb where tmcode in (select tmcode from rateplan where shdes = '');
delete mpulktm1 where tmcode in (select tmcode from rateplan where shdes = '');
delete mpulktmm where tmcode in (select tmcode from rateplan where shdes ='');
delete mpulktm2 where tmcode in (select tmcode from rateplan where shdes ='');
delete TARIFF_SERVICE_PACKAGE where tmcode in (select tmcode from rateplan where shdes = '');
delete bluiftab where tmcode in (select tmcode from rateplan where shdes = '');
delete bgh_breakdownmatrix where tm = '';
delete bgh_breakdownmatrix_brkcode where X_BRK_SECTION_ID in (select x_id from bgh_breakdownmatrix where tm ='');
delete bgh_breakdownmatrix_brkcode_tz where X_BRK_CODE_ID in (select x_id from bgh_breakdownmatrix_brkcode where X_BRK_SECTION_ID in (select x_id from bgh_breakdownmatrix where tm = ''));
delete bgh_rateplanlist where sh_des = '';
delete bgh_rateplanusagelist_tm where tm = '';

