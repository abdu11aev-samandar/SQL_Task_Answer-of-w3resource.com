SELECT employee_id, first_name, job_id, department_id
from employees
where DEPARTMENT_ID in (30, 40, 90)
order by DEPARTMENT_ID;