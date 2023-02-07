SELECT *
from employees
where employee_id in (SELECT distinct manager_id
                      from employees)