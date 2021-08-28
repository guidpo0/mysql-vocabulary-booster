USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
departments.DEPARTMENT_NAME AS 'Departamento',
jobs.JOB_TITLE AS 'Cargo'
FROM job_history
INNER JOIN employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN jobs
ON jobs.JOB_ID = job_history.JOB_ID
INNER JOIN departments
ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY Departamento ASC, Cargo ASC;
END $$
DELIMITER ;
