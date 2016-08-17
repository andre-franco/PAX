
  CREATE TABLE "PAXHC"."HC_LAYOUT_ITEM"
   (	"LAYOUT_ITEM_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1
 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOOR
DER  NOCYCLE  NOT NULL ENABLE,
	"NOME" VARCHAR2(50 CHAR) NOT NULL ENABLE,
	"TIPO" VARCHAR2(50) NOT NULL ENABLE,
	"AVAL_BOM_DEFAULT" VARCHAR2(4000 CHAR),
	"AVAL_RUIM_DEFAULT" VARCHAR2(4000 CHAR),
	 CONSTRAINT "LAYOUT_ITEM_PK" PRIMARY KEY ("LAYOUT_ITEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_HC"  ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_HC"

