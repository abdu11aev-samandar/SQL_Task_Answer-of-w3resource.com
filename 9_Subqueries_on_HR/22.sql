SELECT DEPARTMENT_ID, sum(salary)
from employees
group by DEPARTMENT_ID
having count(employee_id) >= 1
order by DEPARTMENT_ID asc