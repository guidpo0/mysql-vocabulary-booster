SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
job_history_department.JOB_TITLE AS 'Cargo',
job_history_department.START_DATE AS 'Data de início do cargo',
job_history_department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN
(
SELECT history_department.EMPLOYEE_ID,
jobs.JOB_TITLE,
history_department.JOB_ID,
history_department.START_DATE,
history_department.DEPARTMENT_NAME
FROM hr.jobs AS jobs
INNER JOIN
(
SELECT history.EMPLOYEE_ID,
history.JOB_ID,
history.START_DATE,
department.DEPARTMENT_NAME
FROM hr.job_history AS history
INNER JOIN hr.departments AS department
ON history.DEPARTMENT_ID = department.DEPARTMENT_ID
) AS history_department
ON jobs.JOB_ID = history_department.JOB_ID
) AS job_history_department
ON job_history_department.JOB_ID = employees.JOB_ID
ORDER BY `Nome completo` ASC, Cargo ASC;
