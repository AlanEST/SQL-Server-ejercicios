CREATE PROCEDURE ListadeProductosmenorqueImporte
@Limiteprecio MONEY
AS 
BEGIN
SELECT p.ProductID, p.Name, p.ProductNumber, p.ListPrice
FROM Production.Product p WHERE p.ListPrice> 0 AND p.ListPrice < @Limiteprecio AND p.SellEndDate IS NULL
END

-- La ejecuación en este caso es: EXECUTE AdventureWorks2008.dbo.ListadeProductosmenorqueImporte 40
-- Para la ejecución de este PA solo se ocupó el nombre del procedimiento y el valor del parámetro de entrada