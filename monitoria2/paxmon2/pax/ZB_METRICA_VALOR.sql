
  CREATE TABLE "PAX"."ZB_METRICA_VALOR"
   (	"METRICA_VALOR_ID" NUMBER NOT NULL ENABLE,
	"METRICA_LINK_ID" NUMBER NOT NULL ENABLE,
	"DATA" DATE NOT NULL ENABLE,
	"VALOR" NUMBER NOT NULL ENABLE,
	 CONSTRAINT "ZB_METRICA_VALOR_PK" PRIMARY KEY ("METRICA_VALOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"  ENABLE,
	 CONSTRAINT "ZB_METRICA_VALOR_ZB_METRI_FK1" FOREIGN KEY ("METRICA_LINK_ID")
	  REFERENCES "PAX"."ZB_METRICA_LINK" ("METRICA_LINK_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"

