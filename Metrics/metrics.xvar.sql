﻿-- External variable database definition for PostGres 
-- Generated 11/13/17 1:50 PM
-- Descriptor: Metrics/metrics.xvar (currently edited)
-- External variable IQLetterTracking
DROP TABLE IF EXISTS IQLetterTracking;
CREATE TABLE IQLetterTracking (IQLETTERTRACKINGID VARCHAR(250), PID INTEGER, LETTERNUMBER INTEGER, CASEID INTEGER, IQENQUEUED BOOLEAN, IQENQUEUEDAT TIMESTAMP, IQSENT BOOLEAN, IQSENTAT TIMESTAMP, IQRESPONSERECEIVED BOOLEAN, IQRESPONSERECEIVEDAT TIMESTAMP, IQRESPONSE VARCHAR(250), PPID VARCHAR(250), CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP);
CREATE INDEX IQLetterTracking_KEYS ON IQLetterTracking (IQLETTERTRACKINGID);
-- External variable IQTracking
DROP TABLE IF EXISTS IQTracking;
CREATE TABLE IQTracking (PID INTEGER, BATCHID INTEGER, CASEID INTEGER, PARENTID VARCHAR(250), IQRECEIVED BOOLEAN, IQRECEIVEDAT TIMESTAMP, IQHOLD BOOLEAN, IQHOLDAT TIMESTAMP, IQCOMPLETED BOOLEAN, IQCOMPLETEDAT TIMESTAMP, CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP, PDID VARCHAR(250));
CREATE INDEX IQTracking_KEYS ON IQTracking (PID);
-- External variable ISOResponseTracking
DROP TABLE IF EXISTS ISOResponseTracking;
CREATE TABLE ISOResponseTracking (PID INTEGER, REQUESTID VARCHAR(250), CASEID INTEGER, SCORE VARCHAR(250), SCOREVALUE INTEGER, ISORESPONSERECEIVED BOOLEAN, PREVIOUSSCORERETRIEVED BOOLEAN, ISORESPONSESENT BOOLEAN, SCORERECEIVED BOOLEAN, DIARYCREATED BOOLEAN, ACTIVITYCREATED BOOLEAN, IQCANCELLED BOOLEAN, ISOCANCELLED BOOLEAN, CASECLOSED BOOLEAN, EXCEPTIONCREATED BOOLEAN, CASEREOPENED BOOLEAN, IQSENT BOOLEAN, ISORESPONSERECEIVEDAT TIMESTAMP, PREVIOUSSCORERETRIEVEDAT TIMESTAMP, ISORESPONSESENTAT TIMESTAMP, SCORERECEIVEDAT TIMESTAMP, DIARYCREATEDAT TIMESTAMP, ACTIVITYCREATEDAT TIMESTAMP, IQCANCELLEDAT TIMESTAMP, ISOCANCELLEDAT TIMESTAMP, CASECLOSEDAT TIMESTAMP, EXCEPTIONCREATEDAT TIMESTAMP, CASEREOPENEDAT TIMESTAMP, IQSENTAT TIMESTAMP, PDID VARCHAR(250), CREATEDAT TIMESTAMP, UPDATEDAT TIMESTAMP);
CREATE INDEX ISOResponseTracking_KEYS ON ISOResponseTracking (PID);
-- External variable ISOTracking
DROP TABLE IF EXISTS ISOTracking;
CREATE TABLE ISOTracking (PID INTEGER, CASEID INTEGER, BATCHID INTEGER, CLIENTID INTEGER, ENVIRONMENTID VARCHAR(250), REQUESTID VARCHAR(250), ISORECEIVED BOOLEAN, ISOPROCESSINGBEGAN BOOLEAN, ISODUPLICATEFOUND BOOLEAN, ISODATAFETCHED BOOLEAN, ISOSENT BOOLEAN, ISORECEIVEDAT TIMESTAMP, ISOPROCESSINGBEGANAT TIMESTAMP, ISODUPLICATEFOUNDAT TIMESTAMP, ISODATAFETCHEDAT TIMESTAMP, ISOSENTAT TIMESTAMP, PARENTPID VARCHAR(250), PDID VARCHAR(250), CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP);
CREATE INDEX ISOTracking_KEYS ON ISOTracking (PID);
-- External variable CaseTracking
DROP TABLE IF EXISTS CaseTracking;
CREATE TABLE CaseTracking (CASETRACKINGID VARCHAR(250), CASEID INTEGER, ISOINDICATOR INTEGER, SCORE INTEGER, ACCIDENTDATE TIMESTAMP, BENEFITAMOUNT INTEGER, FUNDINGSOURCE VARCHAR(250), LOB VARCHAR(250), STATE VARCHAR(250), WORKCOMP VARCHAR(250), CASESTATUS VARCHAR(250), CASESOURCE VARCHAR(250), CASETYPE VARCHAR(250), BATCHID INTEGER, CASERECEIVED BOOLEAN, CASEIDENTIFIED BOOLEAN, CASERECEIVEDAT TIMESTAMP, CASEIDENTIFIEDAT TIMESTAMP, PID INTEGER, PDID VARCHAR(250), CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP);
CREATE INDEX CaseTracking_KEYS ON CaseTracking (CASETRACKINGID);
-- External variable BatchTracking
DROP TABLE IF EXISTS BatchTracking;
CREATE TABLE BatchTracking (BATCHID INTEGER, ENVIRONMENTID VARCHAR(250), CLIENTID INTEGER, CASECOUNT INTEGER, BATCHPROCESSINGBEGAN BOOLEAN, BATCHPROCESSINGENDED BOOLEAN, BATCHPROCESSINGBEGANAT TIMESTAMP, BATCHPROCESSINGENDEDAT TIMESTAMP, CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP, PID INTEGER, PDID VARCHAR(250));
CREATE INDEX BatchTracking_KEYS ON BatchTracking (BATCHID);

