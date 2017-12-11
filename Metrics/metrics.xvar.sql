﻿-- External variable database definition for PostGres 
-- Generated 12/10/17 7:42 PM
-- Descriptor: Metrics/metrics.xvar (currently edited)
-- External variable ExecutionError
DROP TABLE IF EXISTS ExecutionError;
CREATE TABLE ExecutionError (ID VARCHAR(250), CASEID INTEGER, FAILCOUNT INTEGER, TECHNICALERROR BOOLEAN, STEP VARCHAR(250), RESOLVED BOOLEAN, INTEGRATION BOOLEAN, VALIDATION BOOLEAN, MESSAGE BOOLEAN, CREATED_AT TIMESTAMP, UPDATED_AT TIMESTAMP, CREATED_BY_PROCESS VARCHAR(250), CREATED_BY_INSTANCE INTEGER);
CREATE INDEX ExecutionError_KEYS ON ExecutionError (ID);
-- External variable CaseTracking
DROP TABLE IF EXISTS CaseTracking;
CREATE TABLE CaseTracking (ID VARCHAR(250), CASEID INTEGER, BEGINPROCESSING BOOLEAN, BEGINPROCESSINGAT TIMESTAMP, ISOINDICATORCHANGED BOOLEAN, ISOINDICATORPREVIOUS INTEGER, ISOINDICATORCURRENT VARCHAR(250), SCORECHANGED BOOLEAN, SCOREPREVIOUS INTEGER, SCORECURRENT INTEGER, ACCIDENTDATECHANGED BOOLEAN, ACCIDENTDATEPREVIOUS TIMESTAMP, ACCIDENTDATECURRENT TIMESTAMP, BENEFITAMOUNTCHANGED BOOLEAN, BENEFITAMOUNTPREVIOUS NUMERIC, BENEFITAMOUNTCURRENT NUMERIC, FUNDINGSOURCECHANGED BOOLEAN, FUNDINGSOURCEPREVIOUS VARCHAR(250), FUNDINGSOURCECURRENT VARCHAR(250), LOBCHANGED BOOLEAN, LOBPREVIOUS VARCHAR(250), LOBCURRENT VARCHAR(250), WORKCOMPCHANGED BOOLEAN, WORKCOMPPREVIOUS BOOLEAN, WORKCOMPCURRENT BOOLEAN, CASESTATUSCHANGED BOOLEAN, CASESTATUSPREVIOUS VARCHAR(250), CASESTATUSCURRENT VARCHAR(250), CASESOURCECHANGED BOOLEAN, CASESOURCEPREVIOUS VARCHAR(250), CASESOURCECURRENT VARCHAR(250), LIFECYCLECHANGED BOOLEAN, LIFECYCLEPREVIOUS VARCHAR(250), LIFECYCLECURRENT VARCHAR(250), CLOSEREASONCHANGED BOOLEAN, CLOSEREASONPREVIOUS VARCHAR(250), CLOSEREASONCURRENT VARCHAR(250), STATECHANGED BOOLEAN, STATEPREVIOUS VARCHAR(250), STATECURRENT VARCHAR(250), IQRESPONSERECEIVEDCHANGED BOOLEAN, IQRESPONSERECEIVEDPREVIOUS BOOLEAN, IQRESPONSERECEIVEDCURRENT BOOLEAN, CANCLOSECHANGED BOOLEAN, CANCLOSEPREVIOUS BOOLEAN, CANCLOSECURRENT BOOLEAN, BELOWCOSTEFFECTIVECHANGED BOOLEAN, BELOWCOSTEFFECTIVEPREVIOUS BOOLEAN, BELOWCOSTEFFECTIVECURRENT BOOLEAN, IQRETURNMAILCHANGED BOOLEAN, IQRETURNMAILPREVIOUS BOOLEAN, IQRETURNMAILCURRENT BOOLEAN, INVALIDADDRESSCHANGED BOOLEAN, INVALIDADDRESSPREVIOUS BOOLEAN, INVALIDADDRESSCURRENT BOOLEAN, IQHOLDCHANGED BOOLEAN, IQHOLDPREVIOUS BOOLEAN, IQHOLDCURRENT BOOLEAN, ISOSENTCHANGED BOOLEAN, ISOSENTPREVIOUS BOOLEAN, ISOSENTCURRENT BOOLEAN, ISORESPONSECHANGED BOOLEAN, ISORESPONSEPREVIOUS VARCHAR(250), ISORESPONSECURRENT VARCHAR(250), VIPCHANGED BOOLEAN, VIPPREVIOUS BOOLEAN, VIPCURRENT BOOLEAN, IQLETTERSCHANGED BOOLEAN, IQLETTERSPREVIOUS INTEGER, IQLETTERSCURRENT INTEGER, DAYSSINCEACCIDENTCHANGED BOOLEAN, DAYSSINCEACCIDENTPREVIOUS INTEGER, DAYSSINCEACCIDENTCURRENT INTEGER, BELOWCOSTEFFECTIVEPURSUITDUEDAT BOOLEAN, BELOWCOSTEFFECTIVEPURSUITDUEDA1 BOOLEAN, BELOWCOSTEFFECTIVEPURSUITDUEDA2 BOOLEAN, DAYSSINCELASTIQLETTERCHANGED BOOLEAN, DAYSSINCELASTIQLETTERPREVIOUS INTEGER, DAYSSINCELASTIQLETTERCURRENT INTEGER, SENDTOISO BOOLEAN, SENDTOIQ BOOLEAN, DROPCASE BOOLEAN, CREATED_AT TIMESTAMP, UPDATED_AT TIMESTAMP, CREATED_BY_PROCESS VARCHAR(250), CREATED_BY_INSTANCE INTEGER);
CREATE INDEX CaseTracking_KEYS ON CaseTracking (ID);
-- External variable LaunchpointCase
DROP TABLE IF EXISTS LaunchpointCase;
CREATE TABLE LaunchpointCase (CASEID INTEGER, CLIENTID INTEGER, BATCHID INTEGER, ENVIRONMENTID VARCHAR(250), ISOINDICATOR INTEGER, SCORE INTEGER, ACCIDENTDATE TIMESTAMP, BENEFITAMOUNT NUMERIC, FUNDINGSOURCE VARCHAR(250), LOB VARCHAR(250), WORKCOMP BOOLEAN, CASESTATUS VARCHAR(250), CASESOURCE VARCHAR(250), LIFECYCLE VARCHAR(250), CLOSEREASON VARCHAR(250), STATE VARCHAR(250), IQRESPONSERECEIVED BOOLEAN, CANCLOSE BOOLEAN, BELOWCOSTEFFECTIVEPURSUIT BOOLEAN, IQRETURNMAIL BOOLEAN, INVALIDADDRESS BOOLEAN, IQHOLD BOOLEAN, ISOSENT BOOLEAN, ISORESPONSE VARCHAR(250), VIP BOOLEAN, IQLETTERS INTEGER, DAYSSINCEACCIDENT INTEGER, BELOWCOSTEFFECTIVEPURSUITDUEDAT BOOLEAN, DAYSSINCELASTIQLETTER INTEGER, CREATED_AT TIMESTAMP, UPDATED_AT TIMESTAMP, CREATED_BY_PROCESS VARCHAR(250), CREATED_BY_INSTANCE INTEGER);
CREATE INDEX LaunchpointCase_KEYS ON LaunchpointCase (CASEID);
-- External variable IQTracking
DROP TABLE IF EXISTS IQTracking;
CREATE TABLE IQTracking (ID INTEGER, CASEID INTEGER, IQRECEIVED BOOLEAN, IQRECEIVEDAT TIMESTAMP, IQENQUEUED BOOLEAN, IQENQUEUEDAT TIMESTAMP, IQDEQUEUED BOOLEAN, IQDEQUEUEDAT TIMESTAMP, IQSENT BOOLEAN, IQSENTAT TIMESTAMP, CREATED_AT TIMESTAMP, UPDATED_AT TIMESTAMP, CREATED_BY_PROCESS VARCHAR(250), CREATED_BY_INSTANCE INTEGER);
CREATE INDEX IQTracking_KEYS ON IQTracking (ID);
-- External variable ISOResponseTracking
DROP TABLE IF EXISTS ISOResponseTracking;
CREATE TABLE ISOResponseTracking (ID INTEGER, REQUESTID VARCHAR(250), SCORE VARCHAR(250), SCOREVALUE INTEGER, ISORESPONSERECEIVED BOOLEAN, ISORESPONSERECEIVEDAT TIMESTAMP, PREVIOUSSCORERETRIEVED BOOLEAN, PREVIOUSSCORERETRIEVEDAT TIMESTAMP, ISORESPONSESENT BOOLEAN, ISORESPONSESENTAT TIMESTAMP, SCORERECEIVED BOOLEAN, SCORERECEIVEDAT TIMESTAMP, UPDATELIFECYCLE BOOLEAN, UPDATELIFECYCLEAT TIMESTAMP, CREATEDIARY BOOLEAN, CREATEDIARYAT TIMESTAMP, FORCEIQ BOOLEAN, FORCEIQAT TIMESTAMP, CREATEACTIVITY BOOLEAN, CREATEACTIVITYAT TIMESTAMP, HOLDIQ BOOLEAN, HOLDIQAT TIMESTAMP, CREATED_AT TIMESTAMP, UPDATED_AT TIMESTAMP, CREATED_BY_PROCESS VARCHAR, CREATED_BY_INSTANCE BIGINT);
CREATE INDEX ISOResponseTracking_KEYS ON ISOResponseTracking (ID);
-- External variable ISOTracking
DROP TABLE IF EXISTS ISOTracking;
CREATE TABLE ISOTracking (ID INTEGER, CASEID INTEGER, REQUESTID VARCHAR(250), ISORECEIVED BOOLEAN, ISORECEIVEDAT TIMESTAMP, ISOQUERYDCM BOOLEAN, ISOQUERYDCMAT TIMESTAMP, ISOREQUESTRECIEVED BOOLEAN, ISOREQUESTRECEIVEDAT TIMESTAMP, ISOSENT BOOLEAN, ISOSENTAT TIMESTAMP, ISOCOMPLETED BOOLEAN, ISOCOMPLETEDAT TIMESTAMP, CREATED_AT TIMESTAMP, UPDATED_AT TIMESTAMP, CREATED_BY_PROCESS VARCHAR, CREATED_BY_INSTANCE BIGINT);
CREATE INDEX ISOTracking_KEYS ON ISOTracking (ID);
-- External variable BatchTracking
DROP TABLE IF EXISTS BatchTracking;
CREATE TABLE BatchTracking (BATCHID INTEGER, ENVIRONMENTID VARCHAR(250), CLIENTID INTEGER, CASECOUNT INTEGER, BATCHPROCESSINGBEGAN BOOLEAN, BATCHPROCESSINGENDED BOOLEAN, BATCHPROCESSINGBEGANAT TIMESTAMP, BATCHPROCESSINGENDEDAT TIMESTAMP, CREATED_AT TIMESTAMP, UPDATED_AT TIMESTAMP, CREATED_BY_PROCESS VARCHAR(250), CREATED_BY_INSTANCE INTEGER);
CREATE INDEX BatchTracking_KEYS ON BatchTracking (BATCHID);

