SELECT j.job_title, e.first_name, j.max_salary - e.salary
from employees e
         join jobs j
              on e.DEPARTMENT_ID = 80 and e.JOB_ID = j.JOB_ID