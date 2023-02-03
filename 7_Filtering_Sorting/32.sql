SELECT distinct employee_id, max(end_date) as end_date
from job_history
group by employee_id;