-- Total de productos que existen en stock por Categoría ordenados por el Id de Categoría
SELECT c.CategoryID, c.CategoryName, SUM(p.UnitsInStock) UnitsInStock FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName, c.CategoryID
ORDER BY c.CategoryID