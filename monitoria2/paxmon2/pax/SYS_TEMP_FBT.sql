
  CREATE GLOBAL TEMPORARY TABLE "PAX"."SYS_TEMP_FBT"
   (	"SCHEMA" VARCHAR2(32),
	"OBJECT_NAME" VARCHAR2(32),
	"OBJECT#" NUMBER,
	"RID" UROWID (4000),
	"ACTION" CHAR(1)
   ) ON COMMIT PRESERVE ROWS

