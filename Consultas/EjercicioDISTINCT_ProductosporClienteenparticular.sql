-- Lista de productos ordenados por un cliente en particular
SELECT DISTINCT od.ProductID, p.ProductName  FROM Orders o
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE o.CustomerID = 'ALFKI'
ORDER BY p.ProductName

--Si quitamos el DISTINCT se genera una lista del Total de Productos que pidió 'ANATR' en en Total de sus Órdenes
-- en este caso hizo 4 Órdenes con un Total de 10 Productos, de los cuales, todos son distintos
-- Si consideramos el Cliente 'ALFKI', vemos cómo éste solicitó un total de 12 productos en todas sus órdenes, pero 
-- 11 de ellos son distintos