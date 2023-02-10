SELECT *
from employees e
         join job_history j
              on e.job_id = j.job_id
where salary >= 12000