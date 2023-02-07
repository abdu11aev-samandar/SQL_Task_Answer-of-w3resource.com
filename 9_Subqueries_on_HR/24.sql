SELECT *,
       case
           when salary >= (SELECT avg(salary) from employees) then 'HIGH'
           else 'LOW'
           end as SalaryStatus
from employees