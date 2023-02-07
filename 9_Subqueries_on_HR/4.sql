SELECT *
from employees
where salary > (SELECT avg(salary)
                from employees)