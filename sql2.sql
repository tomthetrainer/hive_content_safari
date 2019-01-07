set -v
hive -e 'set -v' | more

-- Configure number of reducers
set mapreduce.job.reduces=2;

insert overwrite directory '/user/cloudera/hive_out2'
select year,name from eu distribute by year sort by year,name;

-- hadoop fs -ls /user/cloudera/hive_out2/000000_0




