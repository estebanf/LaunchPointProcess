select  
	batchtracking.batchid,
	environmentid,
	clientid,
	casetrackingid,
	caseid,
	isoindicator,
	score,
	accidentdate,
	benefitamount,
	fundingsource,
	lob,
	state,
	workcomp,
	casestatus,
	casesource,
	casetype
from casetracking
inner join batchtracking on (casetracking.batchid = batchtracking.batchid)
where caseid = ?
order by casetracking.createdat desc
limit 1

