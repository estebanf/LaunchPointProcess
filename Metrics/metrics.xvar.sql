﻿-- External variable database definition for H2 
-- Generated 10/5/17 2:50 PM
-- Descriptor: Metrics/metrics.xvar (currently edited)
-- External variable CaseTable
DROP TABLE IF EXISTS CaseTable;
CREATE TABLE CaseTable (CASEID VARCHAR(250), ISOINDICATOR INTEGER, SCORE INTEGER, ACCIDENTDATE TIMESTAMP, BENEFITAMOUNT VARCHAR(250), FUNDINGSOURCE VARCHAR(250), LOB VARCHAR(250), STATE VARCHAR(250), WORKCOMP VARCHAR(250), CASESTATUS VARCHAR(250), CASESOURCE VARCHAR(250), CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP, CASETYPE VARCHAR(250), ISORECEIVED TIMESTAMP, SENTTOISO TIMESTAMP, BATCHID VARCHAR(250), ISORESPONSE VARCHAR(250), ISORESPONSERECEIVED TIMESTAMP);
CREATE INDEX CaseTable_KEYS ON CaseTable (CASEID);
-- External variable Batch
DROP TABLE IF EXISTS Batch;
CREATE TABLE Batch (BATCHID VARCHAR(250), ENVIRONMENTID VARCHAR(250), CLIENTID VARCHAR(250), CASECOUNT INTEGER, BATCHSTATUS VARCHAR(250), CREATEDAT TIMESTAMP, MODIFIEDAT TIMESTAMP, RECEIVEDAT TIMESTAMP, PROCESSINGFINISHEDAT TIMESTAMP);
CREATE INDEX Batch_KEYS ON Batch (BATCHID);

