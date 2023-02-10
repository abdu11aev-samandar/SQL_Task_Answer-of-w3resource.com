SELECT DEPARTMENT_NAME, first_name, city
from ((employees e
    join departments d
       on e.MANAGER_ID = d.MANAGER_ID)
    join locations l
      on d.location_id = l.location_id)