
  CREATE TABLE "PAX"."PMP_TASK_PARADA"
   (	"TASK_PARADA_ID" NUMBER NOT NULL ENABLE,
	"TASK_ID" NUMBER,
	"PARADA_ID" NUMBER,
	"DATA_INICIO_PARADA" DATE,
	"DATA_FIM_PARADA" DATE,
	 CONSTRAINT "PMP_TASK_PARADA_PK" PRIMARY KEY ("TASK_PARADA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"  ENABLE,
	 CONSTRAINT "PMP_TASK_PARADA_PMP_TASK_FK1" FOREIGN KEY ("TASK_ID")
	  REFERENCES "PAX"."PMP_TASK" ("TASK_ID") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "PMP_TASK_PARADA_PMP_PARAD_FK1" FOREIGN KEY ("PARADA_ID")
	  REFERENCES "PAX"."PMP_PARADA" ("PARADA_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"

