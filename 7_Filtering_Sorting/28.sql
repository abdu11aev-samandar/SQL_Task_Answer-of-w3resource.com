SELECT first_name, last_name, hire_date
from employees
where job_id = 'SA_MAN'
   or job_id = 'SA_REP'
order by hire_date asc;