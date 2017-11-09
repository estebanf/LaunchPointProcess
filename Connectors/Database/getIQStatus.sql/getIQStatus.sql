select 
	casetracking.caseid,
	case 
		when (iqtracking.iqenqueued is null) or  (iqtracking.iqenqueued = false) THEN 'Processing'
		when iqtracking.iqenqueued = true then
			case 
				when (iqtracking.iqsent is null) or (iqtracking.iqsent = false) THEN 'Waiting'
				when iqtracking.iqsent = true then
					case
						when (iqtracking.iqresponsereceived is null) or (iqtracking.iqresponsereceived = false) then 'Sent'
						when (iqtracking.iqresponsereceived = true) then 'ResponseReceived'
					end
			end
		end as Status
from 
	casetracking 
	inner join iqtracking on (casetracking.caseid = iqtracking.caseid)
where
	casetracking.casetype='IQ' and casetracking.caseid = ?
	
