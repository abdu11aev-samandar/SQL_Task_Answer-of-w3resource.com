create view newyorkstaff as
select *
from salesman
where city = 'New York';