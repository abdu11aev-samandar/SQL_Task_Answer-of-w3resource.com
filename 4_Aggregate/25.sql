SELECT emp_dept, count(emp_idno) as Count
from emp_details
group by emp_dept
order by emp_dept asc;