select iq.caseid from iqtracking iq join iqlettertracking iqletter on iqletter.caseid=iq.caseid
where(iq.iqcompleted or iq.iqcompleted is NULL)
and (iq.iqhold = false or iq.iqhold is NULL)
and iqletter.iqsent = true
and (iqletter.iqabandoned = false or iqletter.iqabandoned is NULL)
and (iqletter.iqresponsereceived = false or iqletter.iqresponsereceived is NULL);
