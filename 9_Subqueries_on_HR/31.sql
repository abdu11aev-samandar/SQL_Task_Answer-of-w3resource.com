SELECT first_name, last_name
from employees e1
where salary > (SELECT sum(salary) / 2
                from employees e2
                where e1.department_id = e2.department_id)