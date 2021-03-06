
  CREATE TABLE "PAX"."DEMO_PRODUCT_INFO"
   (	"PRODUCT_ID" NUMBER NOT NULL ENABLE,
	"PRODUCT_NAME" VARCHAR2(50),
	"PRODUCT_DESCRIPTION" VARCHAR2(2000),
	"CATEGORY" VARCHAR2(30),
	"PRODUCT_AVAIL" VARCHAR2(1),
	"LIST_PRICE" NUMBER(8,2),
	"PRODUCT_IMAGE" BLOB,
	"MIMETYPE" VARCHAR2(255),
	"FILENAME" VARCHAR2(400),
	"IMAGE_LAST_UPDATE" DATE,
	 CONSTRAINT "DEMO_PRODUCT_INFO_PK" PRIMARY KEY ("PRODUCT_ID")
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
 LOB ("PRODUCT_IMAGE") STORE AS BASICFILE (
  TABLESPACE "TS_DATA_PAX" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))

