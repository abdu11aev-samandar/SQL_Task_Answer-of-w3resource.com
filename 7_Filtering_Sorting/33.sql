SELECT *
from employees
where salary between 7000 and 12000
  and COMMISSION_PCT = 0
  and DEPARTMENT_ID = 50;
