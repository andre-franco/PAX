
  CREATE TABLE "PAX"."DEMO_ORDERS"
   (	"ORDER_ID" NUMBER NOT NULL ENABLE,
	"CUSTOMER_ID" NUMBER NOT NULL ENABLE,
	"ORDER_TOTAL" NUMBER(8,2),
	"ORDER_TIMESTAMP" DATE,
	"USER_ID" NUMBER,
	 CONSTRAINT "DEMO_ORDER_TOTAL_MIN" CHECK (order_total >= 0) ENABLE,
	 CONSTRAINT "DEMO_ORDER_PK" PRIMARY KEY ("ORDER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"  ENABLE,
	 CONSTRAINT "DEMO_ORDERS_USER_ID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "PAX"."DEMO_USERS" ("USER_ID") ENABLE,
	 CONSTRAINT "DEMO_ORDERS_CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "PAX"."DEMO_CUSTOMERS" ("CUSTOMER_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"
