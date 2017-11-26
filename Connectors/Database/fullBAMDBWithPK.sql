drop view IF EXISTS public."ISOCases";
drop table IF EXISTS public.batchtracking;
drop table IF EXISTS public.casetracking;
drop table IF EXISTS public.iqlettertracking;
drop table IF EXISTS public.iqtracking;
drop table IF EXISTS public.isoresponsetracking;
drop table IF EXISTS public.isotracking;

CREATE TABLE public.batchtracking (
	batchid int4 NULL,
	environmentid varchar(250) NULL,
	clientid int4 NULL,
	casecount int4 NULL,
	batchprocessingbegan bool NULL,
	batchprocessingended bool NULL,
	batchprocessingbeganat timestamp NULL,
	batchprocessingendedat timestamp NULL,
	createdat timestamp NULL,
	modifiedat timestamp NULL,
	pid int4 NULL,
	pdid varchar(250) NULL,
	CONSTRAINT batchtracking_pk PRIMARY KEY (batchid)
)
WITH (
	OIDS=FALSE
) ;
create
    index batchtracking_keys on
    batchtracking
        using btree(batchid) ;

CREATE TABLE public.casetracking (
	casetrackingid varchar(250) NULL,
	caseid int4 NULL,
	isoindicator int4 NULL,
	score int4 NULL,
	accidentdate timestamp NULL,
	benefitamount int4 NULL,
	fundingsource varchar(250) NULL,
	lob varchar(250) NULL,
	state varchar(250) NULL,
	workcomp varchar(250) NULL,
	casestatus varchar(250) NULL,
	casesource varchar(250) NULL,
	casetype varchar(250) NULL,
	batchid int4 NULL,
	casereceived bool NULL,
	caseidentified bool NULL,
	casereceivedat timestamp NULL,
	caseidentifiedat timestamp NULL,
	pid int4 NULL,
	pdid varchar(250) NULL,
	createdat timestamp NULL,
	modifiedat timestamp NULL,
	CONSTRAINT casetracking_pk PRIMARY KEY (casetrackingid)
)
WITH (
	OIDS=FALSE
) ;
create
    index casetracking_keys on
    casetracking
        using btree(casetrackingid) ;


CREATE TABLE public.iqlettertracking (
	iqlettertrackingid varchar(250) NULL,
	pid int4 NULL,
	letternumber int4 NULL,
	caseid int4 NULL,
	iqenqueued bool NULL,
	iqenqueuedat timestamp NULL,
	iqsent bool NULL,
	iqsentat timestamp NULL,
	iqabandoned bool NULL,
	iqabandonedat timestamp NULL,
	iqresponsereceived bool NULL,
	iqresponsereceivedat timestamp NULL,
	iqresponse varchar(250) NULL,
	ppid varchar(250) NULL,
	createdat timestamp NULL,
	modifiedat timestamp NULL,
	CONSTRAINT iqlettertracking_pk PRIMARY KEY (iqlettertrackingid)
)
WITH (
	OIDS=FALSE
) ;
create
    index iqlettertracking_keys on
    iqlettertracking
        using btree(iqlettertrackingid) ;


CREATE TABLE iqtracking (
	pid int4 NULL,
	batchid int4 NULL,
	caseid int4 NULL,
	parentid varchar(250) NULL,
	iqreceived bool NULL,
	iqreceivedat timestamp NULL,
	iqhold bool NULL,
	iqholdat timestamp NULL,
	iqcompleted bool NULL,
	iqcompletedat timestamp NULL,
	keyemployee bool NULL,
	invalidaddress bool NULL,
	createdat timestamp NULL,
	modifiedat timestamp NULL,
	pdid varchar(250) NULL,
	CONSTRAINT iqtracking_pk PRIMARY KEY (pid)
)
WITH (
	OIDS=FALSE
) ;
create
    index iqtracking_keys on
    iqtracking
        using btree(pid) ;


CREATE TABLE public.isoresponsetracking (
	pid int4 NULL,
	requestid varchar(250) NULL,
	caseid int4 NULL,
	score varchar(250) NULL,
	scorevalue int4 NULL,
	isoresponsereceived bool NULL,
	previousscoreretrieved bool NULL,
	isoresponsesent bool NULL,
	scorereceived bool NULL,
	diarycreated bool NULL,
	activitycreated bool NULL,
	iqcancelled bool NULL,
	isocancelled bool NULL,
	caseclosed bool NULL,
	exceptioncreated bool NULL,
	casereopened bool NULL,
	iqsent bool NULL,
	isoresponsereceivedat timestamp NULL,
	previousscoreretrievedat timestamp NULL,
	isoresponsesentat timestamp NULL,
	scorereceivedat timestamp NULL,
	diarycreatedat timestamp NULL,
	activitycreatedat timestamp NULL,
	iqcancelledat timestamp NULL,
	isocancelledat timestamp NULL,
	caseclosedat timestamp NULL,
	exceptioncreatedat timestamp NULL,
	casereopenedat timestamp NULL,
	iqsentat timestamp NULL,
	pdid varchar(250) NULL,
	createdat timestamp NULL,
	updatedat timestamp NULL,
	CONSTRAINT isoresponsetracking_pk PRIMARY KEY (pid)
)
WITH (
	OIDS=FALSE
) ;
create
    index isoresponsetracking_keys on
    isoresponsetracking
        using btree(pid) ;

CREATE TABLE public.isotracking (
	pid int4 NULL,
	caseid int4 NULL,
	batchid int4 NULL,
	clientid int4 NULL,
	environmentid varchar(250) NULL,
	requestid varchar(250) NULL,
	isoreceived bool NULL,
	isoprocessingbegan bool NULL,
	isoduplicatefound bool NULL,
	isodatafetched bool NULL,
	isosent bool NULL,
	isoreceivedat timestamp NULL,
	isoprocessingbeganat timestamp NULL,
	isoduplicatefoundat timestamp NULL,
	isodatafetchedat timestamp NULL,
	isosentat timestamp NULL,
	parentpid varchar(250) NULL,
	pdid varchar(250) NULL,
	createdat timestamp NULL,
	modifiedat timestamp NULL,
	CONSTRAINT isotracking_pk PRIMARY KEY (pid)
)
WITH (
	OIDS=FALSE
) ;
create
    index isotracking_keys on
    isotracking
        using btree(pid) ;

CREATE OR REPLACE VIEW public."ISOCases" AS
 SELECT DISTINCT casetracking.batchid,
 	casetracking.caseTrackingId as id,
    casetracking.pid AS parentpid,
    isotracking.pid AS isopid,
    casetracking.caseid,
    casetracking.isoindicator,
    casetracking.score,
    casetracking.accidentdate,
    casetracking.benefitamount,
    casetracking.fundingsource,
    casetracking.lob,
    casetracking.state,
    casetracking.workcomp,
    casetracking.casestatus,
    casetracking.casesource,
    casetracking.casetype,
    casetracking.casereceived,
    casetracking.caseidentified,
    casetracking.casereceivedat,
    casetracking.caseidentifiedat,
    isotracking.requestid,
    isotracking.isoreceived,
    isotracking.isoreceivedat,
    isotracking.isoprocessingbegan,
    isotracking.isoprocessingbeganat,
    isotracking.isoduplicatefound,
    isotracking.isoduplicatefoundat,
    isotracking.isodatafetched,
    isotracking.isodatafetchedat,
    isotracking.isosent,
    isotracking.isosentat
   FROM casetracking
     JOIN isotracking ON casetracking.caseid = isotracking.caseid
  WHERE isotracking.parentpid = casetracking.pid::text AND casetracking.casetype::text = 'ISO'::text;
