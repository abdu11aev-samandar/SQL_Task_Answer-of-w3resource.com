SELECT *
from DEPARTMENTS
where LOCATION_ID = (SELECT LOCATION_ID
                     from departments
                     where DEPARTMENT_ID = 30)