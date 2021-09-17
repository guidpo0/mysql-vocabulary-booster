SELECT products.ProductName AS 'Produto',
products.Price AS 'Preço'
FROM w3schools.products AS products
INNER JOIN
(
SELECT ProductID, MAX(Quantity)
FROM w3schools.order_details
GROUP BY ProductID
HAVING MAX(Quantity) > 80
) AS details
ON products.ProductID = details.ProductID
ORDER BY `Produto` ASC;
