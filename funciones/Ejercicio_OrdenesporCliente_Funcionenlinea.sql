CREATE FUNCTION OrdenesCliente (@ClienteId NCHAR(5)) RETURNS TABLE
RETURN (SELECT OrderID, CustomerID FROM Orders WHERE CustomerID = @ClienteId)

--Su ejecución es SELECT * FROM dbo.OrdenesCliente('HANAR')