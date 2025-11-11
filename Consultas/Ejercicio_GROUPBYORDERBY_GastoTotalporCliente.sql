-- Consumo Total por Cliente (con su Nombre de Compañía) ordenado por el Id del Cliente
SELECT c.CustomerID, c.CompanyName, sum(od.UnitPrice * od.Quantity * (1-od.Discount)) TotalCompra  FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CompanyName
ORDER BY c.CustomerID