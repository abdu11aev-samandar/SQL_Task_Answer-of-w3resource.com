SELECT *
from employees
where salary > (SELECT salary
                from employees
                where job_id = 'PU_MAN')
  and job_id <> 'PU_MAN'