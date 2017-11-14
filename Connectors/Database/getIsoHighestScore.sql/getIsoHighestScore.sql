select 
	isotracking.caseid,
	isotracking.requestid,
	isoresponsetracking.score,
	COALESCE((EXTRACT(epoch from age(now(),isoresponsereceivedat)) / 86400)::int,0) as daysSinceResponse
from isotracking
	inner join isoresponsetracking on (isotracking.caseid = isoresponsetracking.caseid and isotracking.requestid = isoresponsetracking.requestid)
where
	isotracking.isosent = true
	and isoresponsetracking.scorereceived = true
	and isotracking.caseid = ?
order by 
	isoresponsetracking.scorevalue desc
limit 1