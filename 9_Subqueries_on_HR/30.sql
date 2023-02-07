SELECT first_name, last_name
from employees
where DEPARTMENT_ID in (SELECT DEPARTMENT_ID
                        from departments
                        where LOCATION_ID in (SELECT LOCATION_ID
                                              from locations
                                              where COUNTRY_ID = 'US'))