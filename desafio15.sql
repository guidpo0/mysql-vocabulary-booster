USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.SALARY),2) AS 'Média salarial'
FROM jobs AS j
INNER JOIN employees AS e
ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = job;
END $$
DELIMITER ;
