-- insert into table
CREATE  TABLE world2(
  id int,
  name string,
  population int);

insert into table world2 select * from world limit 5;

-- insert into table with overwrite
insert overwrite table world2
select * from world limit 5;
 