SELECT job_title, avg(salary)
from employees e
         join jobs j
              on e.job_id = j.job_id
group by job_title