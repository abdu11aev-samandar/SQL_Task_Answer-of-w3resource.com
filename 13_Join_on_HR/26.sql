SELECT d.DEPARTMENT_NAME, d.DEPARTMENT_ID, count(EMPLOYEE_ID)
from departments d
         left join employees e
                   on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by d.department_id
having count(EMPLOYEE_ID) > 0