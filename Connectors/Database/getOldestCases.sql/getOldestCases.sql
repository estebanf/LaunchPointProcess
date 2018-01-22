SELECT iq.*, lc.batchid 
FROM iqtracking iq join launchpointcase lc on lc.caseid = iq.caseid 
where (iq.iqdequeued is NULL or iq.iqdequeued = false) 
and (iq.iqenqueued = true) 
and (iq.iqsent is null or iq.iqsent = false) 
order by iq.iqenqueuedat asc limit 2500;