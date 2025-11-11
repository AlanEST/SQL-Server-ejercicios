SELECT o.OrderID, c.Country, o.CustomerID FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE 'Mexico' IN ( SELECT Country  FROM Customers c WHERE c.CustomerID = o.CustomerID )

-- En esta primer consulta, si quito el WHERE de la Subconsulta, el sistema solo me devuelve un listado de los países (de Country)
-- Por lo que no consideraría el vínculo que existe entre las tablas Orders y Custumers. Y de esta manera la búsqueda me devolvería
-- la totalidad de las órdenes

SELECT o.OrderID, c.Country, o.CustomerID  FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE Country = 'Mexico'

SELECT o.OrderID, c.Country, o.CustomerID FROM Orders o 
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE Country IN ( SELECT Country FROM Customers WHERE c.Country='Mexico')

-- SINTAXIS ABREVIADA DEL INNER JOIN: SELECT o.OrderID, c.Country FROM Orders o, Customers c WHERE o.CustomerID = c.CustomerID