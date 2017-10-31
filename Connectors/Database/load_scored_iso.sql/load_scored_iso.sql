select isotracking.caseid,isotracking.batchid , isoresponsetracking.score,batchtracking.clientid,environmentid
from isotracking left outer join isoresponsetracking on (isotracking.caseid = isoresponsetracking.caseid)
inner join batchtracking on (isotracking.batchid = batchtracking.batchid)
where isotracking.requestid=?
order by isoresponsetracking.receivedscore desc
limit 1;