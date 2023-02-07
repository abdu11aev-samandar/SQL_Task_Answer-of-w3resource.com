create view gradecount as
select grade, count(grade) as Count
from customer
group by grade;