SELECT *
from departments
where LOCATION_ID = (SELECT LOCATION_ID
                     from locations
                     where city = 'London')