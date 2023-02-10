SELECT e.first_name, j.job_title, h.*
from employees e
         join (SELECT max(start_date),
                      max(end_date),
                      employee_id
               from job_history
               group by employee_id) h on e.employee_id = h.employee_id
         join jobs j on j.job_id = e.job_id
where e.commission_pct = 0
