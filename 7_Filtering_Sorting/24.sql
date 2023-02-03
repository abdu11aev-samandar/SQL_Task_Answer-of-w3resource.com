SELECT job_id
FROM job_history
WHERE end_date - start_date > 300
GROUP BY job_id
HAVING COUNT(*) >= 2;