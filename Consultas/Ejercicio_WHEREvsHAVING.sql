-- 1. Lista de todos los productos que tiene un precio unitario mayor a $18
SELECT *  FROM Products 
WHERE UnitPrice > 18
-- 2. Supongamos que no queremos tener una lista de todos los productos, sino 
-- una lista de proveedores cuyos productos tienen un precio promedio mayor a $18
SELECT SupplierID, AVG(UnitPrice) FROM Products 
GROUP BY SupplierID  -- Observa que primero Agrupamos y después filtramos con HAVING
HAVING AVG(UnitPrice) > 18 
ORDER BY SupplierID