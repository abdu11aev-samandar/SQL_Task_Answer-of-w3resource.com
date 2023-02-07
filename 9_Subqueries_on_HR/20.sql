SELECT *
from employees
where salary > all (SELECT avg(salary)
                    from employees
                    group by DEPARTMENT_ID)