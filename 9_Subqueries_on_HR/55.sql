SELECT *
from employees
where employee_id not in (SELECT employee_id
                          from job_history)