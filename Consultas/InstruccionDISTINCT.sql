SELECT DISTINCT od.ProductID, p.ProductName  FROM [Order Details] od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate >= '1996-07-04'AND o.OrderDate <= '1996-07-05'
ORDER BY od.ProductID

-- Sin la instrucción DISINCT se consultan los productos uno por uno, instroducciendo 
-- esta instrucción se eliminan los duplicados