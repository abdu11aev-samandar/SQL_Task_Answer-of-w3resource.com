SELECT city
from locations
where LOCATION_ID = (SELECT LOCATION_ID
                     from departments
                     where DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                                            from employees
                                            where EMPLOYEE_ID = 134))