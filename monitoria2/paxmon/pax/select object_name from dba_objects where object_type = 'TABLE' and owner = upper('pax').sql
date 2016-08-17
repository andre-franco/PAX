select DBMS_METADATA.GET_DDL('TABLE','select object_name from dba_objects where object_type = 'TABLE' and owner = upper('pax')') from DUAL
                                                                                               *
ERROR at line 1:
ORA-00907: missing right parenthesis


