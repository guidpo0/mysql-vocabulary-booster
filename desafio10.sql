SELECT products.ProductName AS 'Produto',
details.`Mínima`,
details.`Máxima`,
details.`Média`
FROM w3schools.products AS products
INNER JOIN
(
SELECT ProductID,
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details
GROUP BY ProductID
HAVING `Média` > 20
) AS details
ON products.ProductId = details.ProductId
ORDER BY `Média` ASC, `Produto` ASC;
