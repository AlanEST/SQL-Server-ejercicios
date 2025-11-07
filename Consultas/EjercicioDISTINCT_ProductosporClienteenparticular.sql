-- Lista de productos ordenados por un cliente en particular
SELECT DISTINCT od.ProductID, p.ProductName  FROM Orders o
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE o.CustomerID = 'ANATR'
ORDER BY p.ProductName