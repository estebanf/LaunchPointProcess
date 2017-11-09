select 
	casetracking.caseid,
	case 
		when (isotracking.isosent is null)or (isotracking.isosent = false) then 'WAITING'
		else 'SENT'
	end as ISOStatus
from 
	casetracking 
	inner join isotracking on (casetracking.caseid = isotracking.caseid)
where 
	casetracking.casetype = 'ISO' and
	casetracking.caseid = ?