select launchpointcase.caseid as caseid,
launchpointcase.clientid as clientid,
launchpointcase.environmentid as environmentid,
launchpointcase.batchid as batchid,
launchpointcase.isoresponse as isoresponse
from launchpointcase inner join isotracking on isotracking.caseid = launchpointcase.caseid  
where isotracking.requestid = ?