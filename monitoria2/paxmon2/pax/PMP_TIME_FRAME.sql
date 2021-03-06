
  CREATE TABLE "PAX"."PMP_TIME_FRAME"
   (	"TIME_FRAME_ID" NUMBER NOT NULL ENABLE,
	"GRAFICO_ID" NUMBER NOT NULL ENABLE,
	"METRICA_LINK_ID" NUMBER NOT NULL ENABLE,
	"LEGENDA" VARCHAR2(1000) NOT NULL ENABLE,
	"TIPO_HORARIO_ID" NUMBER NOT NULL ENABLE,
	"TIME_FRAME_CONTROLE_ID" NUMBER NOT NULL ENABLE,
	 CONSTRAINT "PMP_TIME_FRAME_PK" PRIMARY KEY ("TIME_FRAME_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"  ENABLE,
	 CONSTRAINT "PMP_TIME_FRAME_PMP_TIPO_H_FK1" FOREIGN KEY ("TIPO_HORARIO_ID")
	  REFERENCES "PAX"."PMP_TIPO_HORARIO" ("TIPO_HORARIO_ID") ENABLE,
	 CONSTRAINT "PMP_TIME_FRAME_PMP_GRAFIC_FK1" FOREIGN KEY ("GRAFICO_ID")
	  REFERENCES "PAX"."PMP_GRAFICO" ("GRAFICO_ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DATA_PAX"

