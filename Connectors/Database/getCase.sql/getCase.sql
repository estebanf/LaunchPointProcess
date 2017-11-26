SELECT caseid, clientid, isoindicator, score, accidentdate, benefitamount, fundingsource, lob, workcomp, casestatus, lifecycle, closereason, state, casesource, environmentid
FROM launchpointcase where caseid = ?;
