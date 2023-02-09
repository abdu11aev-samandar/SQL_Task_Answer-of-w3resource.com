SELECT emp_fname, emp_lname
from emp_details a
         left join emp_department b
                   on a.emp_dept = b.dpt_code
where dpt_allotment > 50000