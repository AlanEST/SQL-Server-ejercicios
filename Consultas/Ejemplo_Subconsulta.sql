SELECT ProductID, ProductName, s.Country FROM NORTHWND.dbo.Products p
INNER JOIN NORTHWND.dbo.Suppliers s
ON p.SupplierID = s.SupplierID
WHERE p.ProductName LIKE 'L%' AND s.Country = 'USA'

SELECT ProductID, ProductName, s.Country FROM NORTHWND.dbo.Products p
INNER JOIN NORTHWND.dbo.Suppliers s
ON p.SupplierID = s.SupplierID
WHERE p.ProductName IN (SELECT ProductName FROM NORTHWND.dbo.Products p
WHERE p.ProductName LIKE 'L%') AND s.Country = 'USA'

SELECT DISTINCT od.ProductID, p.ProductName  FROM NORTHWND.dbo.[Order Details] od
INNER JOIN NORTHWND.dbo.Products p ON od.ProductID = p.ProductID
WHERE 'USA' IN ( SELECT Country FROM  NORTHWND.dbo.Suppliers s WHERE p.SupplierID =s.SupplierID )
AND p.ProductName LIKE 'L%'

-- El valor 'USA' es buscado en el resultado de la subconsulta 
-- LIKE se utiliza para buscar cualquier cadena de caracteres contenidos en campos de tipo char, nchar, nvarchar
-- Recuerda tener cuidado con la forma en que están relacionadas las tablas a través de las llaves primarias-foráneas