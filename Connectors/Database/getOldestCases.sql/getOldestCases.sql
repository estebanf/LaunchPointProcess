SELECT iq.*, lc.clientid, lc.environmentid, lc.batchid FROM iqtracking iq join launchpointcase lc on lc.caseid = iq.caseid where iq.iqdequeued is NULL order by iq.iqenqueuedat asc limit 2500;