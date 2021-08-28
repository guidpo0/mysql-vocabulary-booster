SELECT customers.ContactName AS 'Nome',
customers.Country AS 'País',
country.`Número de compatriotas`
FROM w3schools.customers AS customers
INNER JOIN
(
SELECT Country,
COUNT(Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY Country
) AS country
ON country.Country = customers.Country
ORDER BY Nome ASC;
