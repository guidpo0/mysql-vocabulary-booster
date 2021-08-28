USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total INT;
SELECT COUNT(*)
FROM employees AS e
INNER JOIN job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE e.EMAIL = employee_email
INTO jobs_total;
RETURN jobs_total;
END $$
DELIMITER ;
