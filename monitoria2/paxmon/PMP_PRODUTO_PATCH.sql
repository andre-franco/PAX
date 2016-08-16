
  CREATE TABLE "PAX"."PMP_PRODUTO_PATCH"
   (	"PRODUTO_PATCH_ID" NUMBER NOT NULL ENABLE,
	"PRODUTO_ID" NUMBER,
	"PATCH_DEP_ID" NUMBER,
	 CONSTRAINT "PMP_PRODUTO_PATCH_PK" PRIMARY KEY ("PRODUTO_PATCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"  ENABLE,
	 CONSTRAINT "PMP_PRODUTO_PATCH_PMP_PAT_FK1" FOREIGN KEY ("PATCH_DEP_ID")
	  REFERENCES "PAX"."PMP_PATCH" ("PATCH_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"

