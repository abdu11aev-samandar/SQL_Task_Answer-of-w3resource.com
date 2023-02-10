SELECT first_name, last_name, DEPARTMENT_NAME, city, STATE_PROVINCE
from ((employees e
    left join departments d
       on d.DEPARTMENT_ID = e.DEPARTMENT_ID)
    left join locations l
      on d.LOCATION_ID = l.LOCATION_ID)