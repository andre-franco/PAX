
  CREATE TABLE "PAX"."PMP_CHECKLIST_INTERACAO"
   (	"CHECKLIST_INTERACAO_ID" NUMBER NOT NULL ENABLE,
	"CHECKLIST_ID" NUMBER NOT NULL ENABLE,
	"TIPO_CHECKLIST_ID" NUMBER NOT NULL ENABLE,
	"DATA_INICIO" DATE,
	"DATA_FIM" DATE,
	"CONCLUSAO" NUMBER(1,0),
	"CHECAGEM" NUMBER(1,0) NOT NULL ENABLE,
	"DESCRICAO" VARCHAR2(500),
	 CONSTRAINT "PMP_CHECKLIST_INTERACAO_PK" PRIMARY KEY ("CHECKLIST_INTERACAO_ID")

  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"  ENABLE,
	 CONSTRAINT "PMP_CHECKLIST_INTERACAO_P_FK1" FOREIGN KEY ("TIPO_CHECKLIST_ID")
	  REFERENCES "PAX"."PMP_TIPO_CHECKLIST" ("TIPO_CHECKLIST_ID") ENABLE,
	 CONSTRAINT "PMP_CHECKLIST_INTERACAO_P_FK2" FOREIGN KEY ("CHECKLIST_ID")
	  REFERENCES "PAX"."PMP_CHECKLIST" ("CHECKLIST_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"
