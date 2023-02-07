SELECT *
from employees
where job_id = (SELECT job_id
                from employees
                where first_name = 'Clara')
  and first_name <> 'Clara'