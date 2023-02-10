SELECT job_title, first_name, j.MAX_SALARY - e.salary
from employees e
         join jobs j
              on e.job_id = j.job_id