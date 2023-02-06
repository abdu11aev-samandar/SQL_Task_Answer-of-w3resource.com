SELECT dpt_name
from emp_department
where dpt_code in (SELECT emp_dept
                   from emp_details
                   group by emp_dept
                   having count(emp_dept) > 2)