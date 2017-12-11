select resp.id,resp.score, resp.scorevalue  
from isoresponsetracking as resp
inner join isotracking as iso on (iso.requestid = resp.requestid)
where iso.caseid = ?
order by resp.scorevalue desc