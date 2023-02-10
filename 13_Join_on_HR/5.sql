SELECT e.first_name, last_name, d.DEPARTMENT_NAME, l.city, STATE_PROVINCE
from ((employees e
    join departments d
       on e.DEPARTMENT_ID = d.DEPARTMENT_ID)
    join locations l
      on d.LOCATION_ID = l.LOCATION_ID)
where first_name like '%z%'