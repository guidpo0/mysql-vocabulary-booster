SELECT customer.ContactName AS 'Nome de contato',
order_shipper.ShipperName AS 'Empresa que fez o envio',
order_shipper.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS customer
INNER JOIN
(
SELECT `order`.CustomerId, `order`.OrderDate, shipper.ShipperName
FROM w3schools.orders AS `order`
INNER JOIN w3schools.shippers AS shipper
ON `order`.ShipperId = shipper.ShipperId
) AS order_shipper
ON customer.CustomerId = order_shipper.CustomerId
WHERE order_shipper.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC,
`Empresa que fez o envio` ASC,
`Data do pedido` ASC;
