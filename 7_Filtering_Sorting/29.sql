SELECT DEPARTMENT_ID, avg(salary)
from employees
group by DEPARTMENT_ID
order by avg asc;