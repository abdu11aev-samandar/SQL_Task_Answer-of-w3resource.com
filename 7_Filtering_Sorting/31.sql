SELECT distinct department_id
from employees
group by department_id
having count(department_id) > 10;