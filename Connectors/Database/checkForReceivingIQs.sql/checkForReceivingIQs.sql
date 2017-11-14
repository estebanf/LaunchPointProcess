select count(iqletter.*) from iqtracking iq join iqlettertracking iqletter 
on iq.caseid = iqletter.caseid where iq.caseid = ? and (iq.iqhold = false or iq.iqhold is NULL)
and iqletter.iqenqueued = true and iqletter.iqsent = true 
and (iqletter.iqabandoned = false or iqletter.iqabandoned is NULL)
and (iqletter.iqresponsereceived = false or iqletter.iqresponsereceived is NULL) 