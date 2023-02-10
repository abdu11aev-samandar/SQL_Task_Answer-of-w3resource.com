SELECT COUNTRY_NAME, city, DEPARTMENT_NAME
from ((countries c
    join locations l
       on c.COUNTRY_ID = l.COUNTRY_ID)
    join departments d
      on l.LOCATION_ID = d.LOCATION_ID)