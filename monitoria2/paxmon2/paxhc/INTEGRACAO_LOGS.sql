
  CREATE TABLE "PAXHC"."INTEGRACAO_LOGS"
   (	"DT_INICIO" DATE,
	"DT_FIM" DATE,
	"JOB" VARCHAR2(50),
	"PROCEDURE" VARCHAR2(50),
	"ETAPA" VARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"

