-- hive settings needed for 
-- automatic dynamic partitioning
SET hive.exec.dynamic.partition = true;
SET hive.exec.dynamic.partition.mode = nonstrict;
SET hive.exec.max.dynamic.partitions.pernode=200;
-- create a partitioned table
create table cities_part (name string, population int)
partitioned by (state string);
-- insert into the table
insert into TABLE cities_part
PARTITION (state)
select name, population,state from cities;