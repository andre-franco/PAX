
  CREATE TABLE "PAXHC"."HC_REL_ATTR_CUSTOM"
   (	"REL_ATTR_CUSTOM_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVAL
UE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20
NOORDER  NOCYCLE  NOT NULL ENABLE,
	"NOME" VARCHAR2(50 CHAR) NOT NULL ENABLE,
	"VALOR" VARCHAR2(4000 CHAR),
	"REL_INST_ID" NUMBER NOT NULL ENABLE,
	"REL_ATTR_ID" NUMBER,
	"VALOR_BLOB" BLOB,
	 CONSTRAINT "REL_ATTR_CUSTOM_PK" PRIMARY KEY ("REL_ATTR_CUSTOM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_HC"  ENABLE,
	 CONSTRAINT "REL_ATTR_C_FK_REL_INSTANCE" FOREIGN KEY ("REL_INST_ID")
	  REFERENCES "PAXHC"."HC_REL_INSTANCE" ("REL_INST_ID") ENABLE,
	 CONSTRAINT "REL_ATTR_C_FK_REL_ATTR" FOREIGN KEY ("REL_ATTR_ID")
	  REFERENCES "PAXHC"."HC_REL_ATTR" ("REL_ATTR_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_HC"
 LOB ("VALOR_BLOB") STORE AS BASICFILE (
  TABLESPACE "TS_DATA_HC" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))

