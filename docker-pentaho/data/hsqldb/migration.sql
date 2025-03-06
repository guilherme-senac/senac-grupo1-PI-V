-- Fixes a problem where the chronstring was not allowing nulls and couldn't be fixed by editing the mapping and reving the class
ALTER TABLE PRO_SCHEDULE ALTER COLUMN CRONSTRING VARCHAR(256) NULL;
ALTER TABLE DATASOURCE ALTER COLUMN USERNAME NULL;
ALTER TABLE DATASOURCE ALTER COLUMN PASSWORD NULL;
ALTER TABLE DATASOURCE ALTER COLUMN QUERY NULL;
ALTER TABLE DATASOURCE ALTER COLUMN URL VARCHAR(512);
UPDATE DATASOURCE SET URL='jdbc:hsqldb:hsql://localhost/SampleData' WHERE NAME='SampleData' AND DRIVERCLASS='org.hsqldb.jdbcDriver' AND URL LIKE 'jdbc:hsqldb:file:%';