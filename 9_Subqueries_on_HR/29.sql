SELECT first_name, last_name, salary
from employees
where salary > (SELECT salary
                from employees
                where last_name = 'Ozer')
order by last_name asc;