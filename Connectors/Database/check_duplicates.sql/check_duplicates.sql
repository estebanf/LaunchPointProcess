select * from isotracking where caseid=? and isosent is not null order by modifiedat desc limit 1;