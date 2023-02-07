SELECT *
from employees
where job_id = (SELECT job_id
                from employees
                where employee_id = 169)