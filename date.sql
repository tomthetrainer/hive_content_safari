select id, name, date, year from eu limit 2;

select name, date, year, concat(date,', ',year);
select id, name, date, year, unix_timestamp(concat(date, ',', year),'MMM. d,yyyy') 
from eu limit 2;