SELECT job_id, avg(salary)
from employees
group by job_id
having avg(salary) >= 8000
order by avg asc;