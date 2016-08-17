
  CREATE TABLE "PAX"."PMP_METRICA_LINK"
   (	"METRICA_LINK_ID" NUMBER NOT NULL ENABLE,
	"AMBIENTE_ID" NUMBER,
	"HOST_ID" NUMBER NOT NULL ENABLE,
	"SISTEMA_ID" NUMBER,
	"METRICA_ID" NUMBER NOT NULL ENABLE,
	"PRODUTO_ID" NUMBER,
	"DESCRICAO" VARCHAR2(4000),
	 CONSTRAINT "PMP_METRICA_LINK_PK" PRIMARY KEY ("METRICA_LINK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 131072 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE,
	 CONSTRAINT "PMP_METRICA_LINK_PMP_AMBI_FK1" FOREIGN KEY ("AMBIENTE_ID")
	  REFERENCES "PAX"."PMP_AMBIENTE" ("AMBIENTE_ID") ENABLE,
	 CONSTRAINT "PMP_METRICA_LINK_PMP_HOST_FK1" FOREIGN KEY ("HOST_ID")
	  REFERENCES "PAX"."PMP_HOST" ("HOST_ID") ENABLE,
	 CONSTRAINT "PMP_METRICA_LINK_PMP_METR_FK1" FOREIGN KEY ("METRICA_ID")
	  REFERENCES "PAX"."PMP_METRICA" ("METRICA_ID") DISABLE,
	 CONSTRAINT "PMP_METRICA_LINK_PMP_PROD_FK1" FOREIGN KEY ("PRODUTO_ID")
	  REFERENCES "PAX"."PMP_PRODUTO" ("PRODUTO_ID") ENABLE,
	 CONSTRAINT "PMP_METRICA_LINK_PMP_SIST_FK1" FOREIGN KEY ("SISTEMA_ID")
	  REFERENCES "PAX"."PMP_SISTEMA" ("SISTEMA_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 196608 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"

