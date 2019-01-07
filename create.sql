-- create table like
create table world3 like world

-- create table as select
create table large_country  as 
select * from world where population > 1000000000;

