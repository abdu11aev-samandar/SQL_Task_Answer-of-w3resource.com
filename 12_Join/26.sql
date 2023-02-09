SELECT *
from emp_details a
         left join emp_department b
                   on b.dpt_code = a.emp_dept