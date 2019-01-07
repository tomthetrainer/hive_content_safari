-- basic select
select * from eu;

-- select with where filter
select * from eu where year=1973;

-- select with order by 
write results to a directory

insert overwrite directory '/user/cloudera/hive_out'
select * from eu where year > 1973; 

-- hadoop fs -cat /user/cloudera/hive_out/000000_0

-- distinct 
select distinct year from eu;

-- group by

select year, count(*) from eu group by year;

-- joining tables 

select * from eu join world on eu.name=world.name;

Outer join. 




