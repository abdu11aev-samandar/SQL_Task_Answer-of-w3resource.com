SELECT dpt_name
from emp_department dep
         left join emp_details det
                   on dep.dpt_code = det.emp_dept
group by dpt_code
having count(emp_idno) > 2