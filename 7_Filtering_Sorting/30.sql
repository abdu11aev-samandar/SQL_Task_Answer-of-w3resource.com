SELECT distinct department_id
from employees
group by manager_id, department_id
having count(manager_id) >= 4;