SELECT *
from emp_department
where DPT_ALLOTMENT > (SELECT avg(DPT_ALLOTMENT)
                       from emp_department)