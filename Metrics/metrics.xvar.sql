﻿-- External variable database definition for PostGres 
-- Generated 11/6/17 5:41 PM
-- Descriptor: Metrics/metrics.xvar (currently edited)
-- External variable ISOResponseTracking
DROP TABLE IF EXISTS ISOResponseTracking;
CREATE TABLE ISOResponseTracking (PID INTEGER, REQUESTID VARCHAR(250), CASEID INTEGER, SCORE VARCHAR(250), RESPONSESTATE VARCHAR(250), SENTDCMRESPONSE TIMESTAMP, RECEIVEDSCORE TIMESTAMP, CREATEDDIARY TIMESTAMP, UPDATEDCASE TIMESTAMP, PDID VARCHAR(250), CREATEDAT TIMESTAMP, UPDATEDAT TIMESTAMP);
CREATE INDEX ISOResponseTracking_KEYS ON ISOResponseTracking (PID);
-- External variable ISOTracking
DROP TABLE IF EXISTS ISOTracking;
CREATE TABLE ISOTracking (PID INTEGER, CASEID INTEGER, BATCHID INTEGER, CLIENTID INTEGER, ENVIRONMENTID VARCHAR(250), REQUESTID VARCHAR(250), ISORECEIVED BOOLEAN, ISOPROCESSINGBEGAN BOOLEAN, ISODUPLICATEFOUND BOOLEAN, ISODATAFETCHED BOOLEAN, ISOSENT BOOLEAN, ISORECEIVEDAT TIMESTAMP, ISOPROCESSINGBEGANAT TIMESTAMP, ISODUPLICATEFOUNDAT TIMESTAMP, ISODATAFETCHEDAT TIMESTAMP, ISOSENTAT TIMESTAMP, PARENTPID INTEGER, PDID VARCHAR(250), CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP);
CREATE INDEX ISOTracking_KEYS ON ISOTracking (PID);
-- External variable CaseTracking
DROP TABLE IF EXISTS CaseTracking;
CREATE TABLE CaseTracking (CASEID INTEGER, ISOINDICATOR INTEGER, SCORE INTEGER, ACCIDENTDATE TIMESTAMP, BENEFITAMOUNT INTEGER, FUNDINGSOURCE VARCHAR(250), LOB VARCHAR(250), STATE VARCHAR(250), WORKCOMP VARCHAR(250), CASESTATUS VARCHAR(250), CASESOURCE VARCHAR(250), CASETYPE VARCHAR(250), BATCHID INTEGER, CASERECEIVED BOOLEAN, CASEIDENTIFIED BOOLEAN, CASERECEIVEDAT TIMESTAMP, CASEIDENTIFIEDAT TIMESTAMP, PID INTEGER, PDID VARCHAR(250), CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP);
CREATE INDEX CaseTracking_KEYS ON CaseTracking (CASEID);
-- External variable BatchTracking
DROP TABLE IF EXISTS BatchTracking;
CREATE TABLE BatchTracking (BATCHID INTEGER, ENVIRONMENTID VARCHAR(250), CLIENTID INTEGER, CASECOUNT INTEGER, BATCHPROCESSINGBEGAN BOOLEAN, BATCHPROCESSINGENDED BOOLEAN, BATCHPROCESSINGBEGANAT TIMESTAMP, BATCHPROCESSINGENDEDAT TIMESTAMP, CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP, PID INTEGER, PDID VARCHAR(250));
CREATE INDEX BatchTracking_KEYS ON BatchTracking (BATCHID);

