
  CREATE TABLE "PAX"."PMP_PRODUTO_METRICA"
   (	"PRODUTO_METRICA_ID" NUMBER NOT NULL ENABLE,
	"PRODUTO_ID" NUMBER NOT NULL ENABLE,
	"METRICA_ID" NUMBER NOT NULL ENABLE,
	"DESCRICAO" VARCHAR2(400),
	 CONSTRAINT "PMP_PRODUTO_METRICA_PK" PRIMARY KEY ("PRODUTO_METRICA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"  ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"
