SELECT *
from employees
where manager_id = (SELECT manager_id
                    from employees
                    where first_name = 'Payam')