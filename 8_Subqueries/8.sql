SELECT grade, count(city)
from customer
group by grade
having grade > (SELECT avg(grade)
                from customer
                where city = 'New York');