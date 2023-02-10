SELECT EMPLOYEE_ID, JOB_TITLE, END_DATE - START_DATE
from jobs
         join job_history using (JOB_ID)
where DEPARTMENT_ID = 80