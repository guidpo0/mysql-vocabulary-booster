USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
SELECT t.`Média Salarial`
FROM
(
SELECT j.JOB_TITLE,
ROUND(AVG(e.SALARY),2) AS 'Média Salarial'
FROM jobs AS j
INNER JOIN employees AS e
ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = job
GROUP BY j.JOB_TITLE
) AS t;
END $$
DELIMITER ;
