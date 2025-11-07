-- Listado de clientes con el nombre de su compañía que atendió un empleado en particular
SELECT DISTINCT o.CustomerID, c.CompanyName FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.EmployeeID = 7

-- Sin la sentencia DISTINCT lo que se mostraria es el listado de todas las
-- Ordenes que atendió el Empleado 7 (serían 72), sin embargo, a Clientes distintos solo se atendieron a 45