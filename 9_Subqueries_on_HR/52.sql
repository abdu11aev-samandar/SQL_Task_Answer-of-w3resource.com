SELECT *
from employees
where salary = (SELECT salary
                from employees
                order by salary asc
                limit 1 offset 1)