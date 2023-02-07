SELECT *
from employees
where salary = (SELECT max(salary)
                from employees
                where hire_date between '2002-01-01' and '2003-12-31')