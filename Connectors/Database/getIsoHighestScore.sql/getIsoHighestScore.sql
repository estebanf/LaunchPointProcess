select 
	isotracking.caseid,
	isotracking.requestid,
	isoresponsetracking.score,
	COALESCE((EXTRACT(epoch from age(now(),isoresponsereceivedat)) / 86400)::int,0) as daysSinceResponse,
	isoresponsereceivedat,
	scorevalue
from isotracking
	inner join isoresponsetracking on (isotracking.caseid = isoresponsetracking.caseid and isotracking.requestid = isoresponsetracking.requestid)
where
	isotracking.isosent = true
	and isoresponsetracking.scorereceived = true
	and isotracking.caseid = ?
	and isoresponsetracking.isoresponsereceivedat not in (select max(isoresponsetracking.isoresponsereceivedat) from isoresponsetracking where caseid = ?)
order by 
	isoresponsetracking.scorevalue desc
limit 1 