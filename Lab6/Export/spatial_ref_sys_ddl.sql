-- DDL script for table spatial_ref_sys for Oracle
-- Generated by (c) Ispirer SQLWays 10.22.3 Build 6944 64bit Licensed to BSTU - Timothey - Belarus - Ispirer MnMTK 10 Microsoft SQL Server to Oracle Database Migration Demo License (1 month, 20220611)
-- Timestamp: Tue May 17 21:56:32 2022
-- Create table statement

SET DEFINE OFF


BEGIN
   EXECUTE IMMEDIATE ' DROP TABLE spatial_ref_sys CASCADE CONSTRAINTS';
   EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/


CREATE TABLE spatial_ref_sys
(
   srid NUMBER(10,0)  NOT NULL,
   auth_name VARCHAR2(256),
   auth_srid NUMBER(10,0),
   srtext VARCHAR2(2048),
   proj4text VARCHAR2(2048) 
);


-- Primary key

ALTER TABLE spatial_ref_sys ADD  CONSTRAINT PK__spatial___36B11BD5F4AB215D
PRIMARY KEY(srid);

EXIT;
