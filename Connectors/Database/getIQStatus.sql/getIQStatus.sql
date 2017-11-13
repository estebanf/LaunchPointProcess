select
	casetracking.caseid,
	letterNumber,
	case 
		when (iqlettertracking.iqenqueued is null) or  (iqlettertracking.iqenqueued = false) THEN 'Processing'
		when iqlettertracking.iqenqueued = true then
			case 
				when (iqlettertracking.iqsent is null) or (iqlettertracking.iqsent = false) THEN 'Waiting'
				when iqlettertracking.iqsent = true then
					case
						when (iqlettertracking.iqresponsereceived is null) or (iqlettertracking.iqresponsereceived = false) then 'Sent'
						when (iqlettertracking.iqresponsereceived = true) then 'ResponseReceived'
					end
			end
		end as Status,
	iqlettertracking.iqresponse
from 
	casetracking 
	inner join iqtracking on (casetracking.caseid = iqtracking.caseid)
	inner join iqlettertracking on (iqtracking.caseid= iqlettertracking.caseid)
where
	casetracking.casetype='IQ' and casetracking.caseid = ?
group by
	casetracking.caseid,iqlettertracking.letternumber,Status,iqlettertracking.iqresponse
order by
	iqlettertracking.letternumber desc
limit 1

	
