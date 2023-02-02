SELECT concat_ws(' ', first_name, last_name) as full_name,
       hire_date,
       commission_pct,
       email,
       replace(phone_number, '.', '-')       as phone_number
from employees
where salary > 11000
   or phone_number like '______3%'
order by first_name desc;