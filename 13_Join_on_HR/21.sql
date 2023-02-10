SELECT country_name, city, count(department_id)
from countries
         join locations using (country_id)
         join departments using (location_id)
where department_id in
      (SELECT department_id
       from employees
       group by department_id
       having count(department_id) >= 2)
group by country_name, city