SELECT *
from employees
where salary = any (SELECT min(salary)
                    from employees
                    group by DEPARTMENT_ID
                    order by min asc)