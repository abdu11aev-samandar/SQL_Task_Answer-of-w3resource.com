SELECT first_name
from employees
where DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                       from departments
                       where LOCATION_ID in (SELECT LOCATION_ID
                                             from locations
                                             where COUNTRY_ID = (SELECT COUNTRY_ID
                                                                 from countries
                                                                 where COUNTRY_NAME = 'United Kingdom')))