SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
j.START_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE MONTH(j.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
