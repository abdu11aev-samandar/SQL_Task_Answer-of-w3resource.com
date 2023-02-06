SELECT emp_fname, emp_lname
from emp_details
where emp_dept in (SELECT dpt_code
                   from emp_department
                   where DPT_ALLOTMENT > 50000)