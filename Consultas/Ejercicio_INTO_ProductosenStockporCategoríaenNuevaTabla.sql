IF OBJECT_ID('ProdutosenStock') IS NOT NULL  --Primero verificamos si la tabla ya existe en la BD
BEGIN
  DROP TABLE ProductosenStock --Borramos la tabla
END

SELECT c.CategoryID, c.CategoryName, SUM(p.UnitsInStock) UnitsInStock  --Campos a guardar en la nueva tabla
INTO ProductosenStock
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName, c.CategoryID
ORDER BY c.CategoryID