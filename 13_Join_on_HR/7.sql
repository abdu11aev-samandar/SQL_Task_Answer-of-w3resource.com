# without join
SELECT first_name, last_name, salary
from employees
where salary < (SELECT salary
                from employees
                where EMPLOYEE_ID = 182);

# with join
SELECT a.first_name, a.last_name, a.salary
from employees a
         join employees b
              on b.EMPLOYEE_ID = 182 and a.salary < b.salary