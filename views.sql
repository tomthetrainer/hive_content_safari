create view medium_country as
select * from world where population > 1000000;

-- note that no directory is created for this view
hadoop fs -ls /user/hive/warehouse

-- query against a veiw
select * from medium_country where name = "United States";

Is identical to select * from world 
where name = "United States"
and population > 1000000;