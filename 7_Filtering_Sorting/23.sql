SELECT job_id, count(employee_id), sum(salary), max(salary) - min(salary) as salary_difference
from employees
group by job_id
order by salary_difference asc;