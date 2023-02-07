SELECT employee_id,
       salary                                       as SalaryDrawn,
       salary - (select avg(salary) from employees) as AvgCompare,
       case
           when salary > (SELECT avg(salary) from employees) then 'HIGH'
           else 'LOW'
           end                                      as SalaryStatus
from employees
order by employee_id desc;