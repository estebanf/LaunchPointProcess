select resp.id,resp.score, resp.scorevalue  
from isoresponsetracking as resp
inner join isotracking as iso on (iso.requestid = resp.requestid)
where iso.caseid = ? and iso.environmentid = ? and iso.clientid = ? and score is not null
order by resp.scorevalue desc