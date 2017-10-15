select isotracking.caseid,isotracking.batchid , isoresponsetracking.score,isoresponsetracking.receivedscore
from isotracking left outer join isoresponsetracking on (isotracking.caseid = isoresponsetracking.caseid)
where isotracking.requestid=?
order by isoresponsetracking.receivedscore desc
limit 1;