SELECT job_title, max_salary - min_salary as salary_differences
from jobs
where max_salary between 12000 and 18000
group by job_id;