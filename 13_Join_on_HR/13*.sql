/* my answer */
SELECT j2.job_title, d.DEPARTMENT_NAME, e.FIRST_NAME, j1.START_DATE
from (((job_history j1
    left join employees e
        on j1.EMPLOYEE_ID = e.EMPLOYEE_ID)
    left join jobs j2
       on j1.job_id = j2.job_id)
    left join departments d
      on j1.DEPARTMENT_ID = d.DEPARTMENT_ID)
where start_date >= '1993-01-01'
  and start_date < '1997-08-31';

/* default answer */
SELECT job_title, department_name, first_name || ' ' || last_name AS Employee_name, start_date
FROM job_history
         JOIN jobs USING (job_id)
         JOIN departments USING (department_id)
         JOIN employees USING (employee_id)
WHERE start_date >= '1993-01-01'
  AND start_date <= '1997-08-31';