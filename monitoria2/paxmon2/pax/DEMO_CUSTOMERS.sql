
  CREATE TABLE "PAX"."DEMO_CUSTOMERS"
   (	"CUSTOMER_ID" NUMBER NOT NULL ENABLE,
	"CUST_FIRST_NAME" VARCHAR2(20) NOT NULL ENABLE,
	"CUST_LAST_NAME" VARCHAR2(20) NOT NULL ENABLE,
	"CUST_STREET_ADDRESS1" VARCHAR2(60),
	"CUST_STREET_ADDRESS2" VARCHAR2(60),
	"CUST_CITY" VARCHAR2(30),
	"CUST_STATE" VARCHAR2(2),
	"CUST_POSTAL_CODE" VARCHAR2(10),
	"PHONE_NUMBER1" VARCHAR2(25),
	"PHONE_NUMBER2" VARCHAR2(25),
	"CREDIT_LIMIT" NUMBER(9,2),
	"CUST_EMAIL" VARCHAR2(30),
	 CONSTRAINT "DEMO_CUST_CREDIT_LIMIT_MAX" CHECK (credit_limit <= 5000) ENABLE,
	 CONSTRAINT "DEMO_CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID")
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

