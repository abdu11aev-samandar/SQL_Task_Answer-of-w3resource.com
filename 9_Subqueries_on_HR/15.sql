SELECT *
from employees
where salary > (SELECT avg(salary)
                from employees)
  and first_name like 'J%'