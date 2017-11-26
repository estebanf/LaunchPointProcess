SELECT caseid, clientid, isoindicator, score, accidentdate, benefitamount, fundingsource, lob, workcomp, casestatus, lifecycle, closereason, state, casesource, environmentid, iqresponsereceived, canclose, belowcosteffectivepursuit, iqreturnmail, created_at, updated_at, created_by_process, created_by_instance
FROM launchpointcase where caseid = ?;
