SELECT E.first_name, E.last_name, E.salary, J.grade_level
FROM employees E
         JOIN job_grades J
              ON E.salary BETWEEN J.lowest_sal AND J.highest_sal;
