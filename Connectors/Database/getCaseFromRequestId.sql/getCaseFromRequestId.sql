select 
launchpointcase.caseid as caseid,
launchpointcase.clientid as clientid,
launchpointcase.environmentid as environmentid,
launchpointcase.batchid as batchid,
launchpointcase.isoresponse as isoresponse,
launchpointcase.casestatus as casestatus,
launchpointcase.score as score,
coalesce(isoresponsetracking.score,'NONE') as highScore, 
coalesce(isoresponsetracking.scorevalue,0) as highScoreValue
from launchpointcase 
inner join isotracking on isotracking.caseid = launchpointcase.caseid
left outer join isoresponsetracking on isotracking.requestid = isoresponsetracking.requestid
where isotracking.requestid = ?
order by isoresponsetracking.scorevalue desc
limit 1