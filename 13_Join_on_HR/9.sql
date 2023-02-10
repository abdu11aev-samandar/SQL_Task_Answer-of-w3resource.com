SELECT d.DEPARTMENT_NAME, l.city, STATE_PROVINCE
from departments d
         left join locations l
                   on d.LOCATION_ID = l.LOCATION_ID