REM INSERTING into BGH.BGH_STRING_TABLE
SET DEFINE OFF;
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (1,'GiroPositive','Uiterste betaaldatum is |DD.MM.YY|. Betaalt u via internet bankieren vermeld dan altijd uw klantnummer.','Uiterste betaaldatum is |DD.MM.YY|. Betaalt u via internet bankieren vermeld dan altijd uw klantnummer.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (2,'GiroZero',' ',' ',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (3,'GiroNegative','Het bedrag wordt verrekend met de volgende factuur. Is dit uw laatste factuur dan wordt het bedrag teruggestort.','Het bedrag wordt verrekend met de volgende factuur. Is dit uw laatste factuur dan wordt het bedrag teruggestort.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (4,'DirectDebitPositive','Het totaalbedrag wordt omstreeks |DD.MM.YY| van uw rekeningnr. |CUSTOMERACCOUNT| afgeschreven.','Het totaalbedrag wordt omstreeks |DD.MM.YY| van uw rekeningnr. |CUSTOMERACCOUNT| afgeschreven.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (5,'DirectDebitZero','Doordat het bedrag nul euro bedraagt, zal er geen automatische afschrijving plaatsvinden.','Doordat het bedrag nul euro bedraagt, zal er geen automatische afschrijving plaatsvinden.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (6,'DirectDebitNegative','Het bedrag wordt verrekend met de volgende factuur. Is dit uw laatste factuur dan wordt het bedrag teruggestort.','Het bedrag wordt verrekend met de volgende factuur. Is dit uw laatste factuur dan wordt het bedrag teruggestort.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (7,'CreditItem','Nog te verrekenen bedrag','Nog te verrekenen bedrag',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (8,'Direct Debit','D','D',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (9,'Acceptgiro','G','G',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (10,'INT','U','U',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (11,'AdminMarket','ADM','ADM',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (12,'EuroCurrency','EUR','EUR',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (13,'StandardAccessFeeCoinvoice','Maandkosten','Maandkosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (14,'StandardAccessDiscountCoinvoice','Korting maandkosten','Korting maandkosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (15,'UsagePerRateplan','Gebruikskosten buiten bundel','Gebruikskosten buiten bundel',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (16,'UsageDiscountPerRateplan','Korting gebruikskosten','Korting gebruikskosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (17,'Occ','diverse kosten','diverse kosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (18,'OccDiscount','korting diverse kosten','korting diverse kosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (19,'CallDetailsTotal','Totaal','Totaal',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (20,'CallDetailsUsageDiscount','Korting','Korting',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (21,'CallDetailsDiscountTotal','Totaal','Totaal',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (22,'ZOGuaranteedEndPeriod','Uw Nummervoordeel periode is verlopen.','Uw Nummervoordeel periode is verlopen.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (23,'ZOGuaranteedEndPeriodPositive','Uw Nummervoordeel periode is verlopen. Het openstaande saldo zal op de eerstvolgende factuur worden verrekend.','Uw Nummervoordeel periode is verlopen. Het openstaande saldo zal op de eerstvolgende factuur worden verrekend.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (24,'ZOGuaranteedNumber1','Nummervoordeel','Nummervoordeel',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (25,'ZOGuaranteedNumber2','Nummervoordeel','Nummervoordeel',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (26,'TimeUOM','Sec','Sec',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (27,'SmsUOM','Msg','Msg',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (28,'DataUOM','KB','KB',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (29,'MmsUOM','MMS','MMS',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (30,'TimeServiceTypes','TEL|TELVM|DATA|FAX|VIDEO|WLAN','TEL|TELVM|DATA|FAX|VIDEO|WLAN',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (31,'SmsServiceType','SMS|DWNLD|WAP|SUBSC|TONES|RTONE|FTMSC|PAPER|GAMES|SBSCR|DRPAS','SMS|DWNLD|WAP|SUBSC|TONES|RTONE|FTMSC|PAPER|GAMES|SBSCR|DRPAS',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (32,'DataServiceType','GPRS','GPRS',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (33,'MmsServiceType','MMS','MMS',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (34,'MonthlyChargesTotal','Maandkosten','Maandkosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (35,'OtherCostsTotal','Kortingen/overige kosten','Kortingen/overige kosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (36,'EN','EN','EN',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (37,'Months','January|February|March|April|May|June|July|August|September|October|November|December','January|February|March|April|May|June|July|August|September|October|November|December',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (38,'Days','Mo|Tu|We|Th|Fr|Sa|Su','Mo|Tu|We|Th|Fr|Sa|Su',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (39,'RemindingCharge','Reminding charge','Reminding charge',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (40,'SimReplacementCard','SIM replacement card','SIM replacement card',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (41,'InactiveCredits','Inactive from |DD.MM.CCYY| to |DD.MM.CCYY|,credits','Inactive from |DD.MM.CCYY| to |DD.MM.CCYY|,credits',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (42,'ActiveCosts','Active from |DD.MM.CCYY| to |DD.MM.CCYY|, costs','Active from |DD.MM.CCYY| to |DD.MM.CCYY|, costs',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (43,'PrepaidCosts','Prepaid from |DD.MM.CCYY| to |DD.MM.CCYY|, costs','Prepaid from |DD.MM.CCYY| to |DD.MM.CCYY|, costs',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (44,'PrepaidCredits','Prepaid from |DD.MM.CCYY| to |DD.MM.CCYY|, credits','Prepaid from |DD.MM.CCYY| to |DD.MM.CCYY|, credits',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (45,'DiscountHeader','DISCTABHDR','DISCTABHDR',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (46,'DiscountLine','DISCTABLINE','DISCTABLINE',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (47,'DiscountTrailer','DISCTABTRL','DISCTABTRL',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (48,'ZOTotalUsage','Toelichting korting gebruikskosten Zakelijk Optimaal','Toelichting korting gebruikskosten Zakelijk Optimaal',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (49,'ZOUsage','Gemiddelde gebruikskosten per aansluiting','Gemiddelde gebruikskosten per aansluiting',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (50,'ZOUsage2','Opbouw klantvoordeel (extra korting gebruikskosten)','Opbouw klantvoordeel (extra korting gebruikskosten)',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (51,'ZODiscount','Korting gebruikskosten','Korting gebruikskosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (52,'ZOMessage','Zie www.t-mobile.nl/zakelijk voor meer informatie over de opbouw van de korting.','Zie www.t-mobile.nl/zakelijk voor meer informatie over de opbouw van de korting.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (53,'Legend','Legend','Legend',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (54,'Service','Service','Service',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (55,'Zone','Zone','Zone',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (56,'RatePeriod','Rate period','Rate period',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (57,'BalanceSheet','Balance sheet','Balance sheet',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (58,'ReceivedPayment','received payment','received payment',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (59,'WriteOff','write-off','write-off',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (60,'OtherInvoice','other invoice','other invoice',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (61,'CreditMemo','credit memo','credit memo',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (62,'CashOnAccount','cash on account','cash on account',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (63,'CashToGeneralLedger','cash to general ledger','cash to general ledger',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (64,'PaymentTransferIn','payment transfer in','payment transfer in',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (65,'InvoiceTransferIn','invoice transfer in','invoice transfer in',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (66,'TransferOut','transfer out','transfer out',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (67,'Adjustment','adjustment','adjustment',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (68,'BouncedPayment','bounced payment','bounced payment',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (69,'StandardAccessDiscount','Korting','Korting',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (70,'AggrLabelDiscountF','Korting maandkosten','Korting maandkosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (71,'AggrLabelDiscountG','Korting gebruikskosten','Korting gebruikskosten',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (72,'DirectDebitPositiveConsumer','Het totaalbedrag wordt binnen enkele dagen van uw rekeningnr. |CUSTOMERACCOUNT| afgeschreven.','Het totaalbedrag wordt binnen enkele dagen van uw rekeningnr. |CUSTOMERACCOUNT| afgeschreven.',null);
Insert into BGH.BGH_STRING_TABLE (STRING_ID,STRING_LABEL,STRING_DES,STRING_DES_EN,COMMENTS) values (73,'MonthlyLoansTotal','Toestelkredieten','Toestelkredieten',null);