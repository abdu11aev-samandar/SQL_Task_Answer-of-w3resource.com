SELECT manager_id, count(employee_id)
from employees
group by manager_id
order by count asc;