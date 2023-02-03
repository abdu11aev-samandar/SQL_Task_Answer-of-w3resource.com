SELECT employee_id, first_name, job_id, department_id
from employees
where DEPARTMENT_ID not in (30, 50, 80)
order by DEPARTMENT_ID;