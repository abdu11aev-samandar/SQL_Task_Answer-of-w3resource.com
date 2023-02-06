SELECT *
from emp_details
where emp_dept in (SELECT dpt_code
                   from emp_department
                   order by dpt_allotment asc
                   limit 1 offset 1)