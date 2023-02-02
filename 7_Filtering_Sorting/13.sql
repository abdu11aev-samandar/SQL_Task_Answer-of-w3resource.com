SELECT concat_ws(' ', first_name, last_name) as full_name, DEPARTMENT_ID
from employees
where DEPARTMENT_ID in (70, 90)
order by DEPARTMENT_ID asc;