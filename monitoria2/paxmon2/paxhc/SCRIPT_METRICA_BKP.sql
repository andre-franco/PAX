
  CREATE TABLE "PAXHC"."SCRIPT_METRICA_BKP"
   (	"SCRIPT_METRICA_ID" NUMBER NOT NULL ENABLE,
	"METRICA_ID" NUMBER NOT NULL ENABLE,
	"SO" VARCHAR2(50),
	"VENDOR" VARCHAR2(50),
	"VERSAO" VARCHAR2(50),
	"COMANDO" VARCHAR2(4000) NOT NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_HC"
