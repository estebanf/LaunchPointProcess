drop view public."ISOCases";
drop table public.batchtracking;
drop table public.casetracking;
drop table public.iqlettertracking;
drop table public.iqtracking;
drop table public.isoresponsetracking;
drop table public.isotracking;

CREATE TABLE public.batchtracking (
	batchid int4 NOT NULL,
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
	pid int4 NOT NULL,
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
	pdid varchar(250) NULL,
	createdat timestamp NULL,
	modifiedat timestamp NULL,
	CONSTRAINT casetracking_pk PRIMARY KEY (pid)
)
WITH (
	OIDS=FALSE
) ;
create
    index casetracking_keys on
    casetracking
        using btree(pid) ;

CREATE TABLE public.iqlettertracking (
	pid int4 NOT NULL,
	letternumber int4 NOT NULL,
	caseid varchar(250) NULL,
	iqenqueued bool NULL,
	iqenqueuedat varchar(250) NULL,
	iqsent bool NULL,
	iqsentat varchar(250) NULL,
	iqresponsereceived bool NULL,
	iqresponsereceivedat varchar(250) NULL,
	iqresponse varchar(250) NULL,
	ppid varchar(250) NULL,
	createdat timestamp NULL,
	modifiedat timestamp NULL,
	CONSTRAINT iqlettertracking_pk PRIMARY KEY (pid,letternumber)
)
WITH (
	OIDS=FALSE
) ;
create
    index iqlettertracking_keys on
    iqlettertracking
        using btree(
        pid,
        letternumber
    ) ;

CREATE TABLE public.iqtracking (
	pid int4 NOT NULL,
	caseid int4 NULL,
	iqreceived bool NULL,
	iqreceivedat timestamp NULL,
	iqhold varchar(250) NULL,
	iqholdat timestamp NULL,
	iqcompleted varchar(250) NULL,
	iqcompletedat timestamp NULL,
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
	pid int4 NOT NULL,
	requestid varchar(250) NULL,
	caseid int4 NULL,
	score varchar(250) NULL,
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
	pid int4 NOT NULL,
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
	parentpid int4 NULL,
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
  WHERE isotracking.parentpid = casetracking.pid AND casetracking.casetype::text = 'ISO'::text;
