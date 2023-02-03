SELECT employee_id
from job_history
group by employee_id
having count(job_id) >= 2;