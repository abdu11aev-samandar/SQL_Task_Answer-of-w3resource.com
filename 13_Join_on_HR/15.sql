SELECT e.DEPARTMENT_ID, avg(salary), count(EMPLOYEE_ID)
from employees e
         left join departments d
                   on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where COMMISSION_PCT is not null
group by e.DEPARTMENT_ID