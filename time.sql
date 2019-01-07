drop table if exists time_test;
create table time_test as select "one" limit 1;
select "DATE_STRING" , from_unixtime(unix_timestamp() , 'EEE MMM dd HH:mm:ss zzz yyyy'),
"#SQL Format 2014-07-09 20:28:01#" , from_unixtime(unix_timestamp() , 'yyyy-MM-d HH:mm:ss'),
"#SQL dayofweek(now())#", from_unixtime(unix_timestamp() , 'u'),
"#SQL dayofyear(now())#", from_unixtime(unix_timestamp() , 'D'),
"#SQL MONTHNAME(now())#", from_unixtime(unix_timestamp() , 'MMMM'),
"#three letter Month#", from_unixtime(unix_timestamp() , 'MMM'),
"#SQL week(now())#", from_unixtime(unix_timestamp() , 'w'),
"#Like a sentence#", from_unixtime(unix_timestamp() ,"hh 'o''clock' a, zzzz"),
"#Time in London#", from_utc_timestamp(to_utc_timestamp(unix_timestamp()*1000,'\${system:user.timezone}'),"Europe/London"),
"#number of days to cricket world cup 2015/02/14 !!#", datediff("2015-02-14", from_unixtime(unix_timestamp(),'yyyy-MM-d'))
from time_test;