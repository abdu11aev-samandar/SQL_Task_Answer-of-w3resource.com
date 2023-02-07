SELECT *
from employees
where DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                       from departments
                       where LOCATION_ID = (SELECT LOCATION_ID
                                            from locations
                                            where city = 'London'))