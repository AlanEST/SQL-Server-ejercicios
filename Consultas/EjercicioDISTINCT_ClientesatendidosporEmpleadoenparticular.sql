-- Listado de clientes con el nombre de su compañía que atendió un empleado en particular
SELECT DISTINCT o.CustomerID, c.CompanyName FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.EmployeeID = 7