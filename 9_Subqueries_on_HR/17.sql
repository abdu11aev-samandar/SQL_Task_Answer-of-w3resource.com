SELECT *
from employees
where salary < (SELECT salary
                from employees
                where job_id = 'MK_MAN')