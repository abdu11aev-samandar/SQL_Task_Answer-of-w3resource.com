SELECT *
FROM employees
WHERE salary BETWEEN 8000 AND 12000
    AND commission_pct IS NOT NULL
   OR department_id NOT IN (40, 120, 70)
    AND hire_date < '2003-06-05'