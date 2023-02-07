SELECT *
from employees
where salary between (SELECT min(salary) from employees) and 2500;
