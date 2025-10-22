CREATE PROCEDURE InsertUpdate_Customers @CustomerID NCHAR(5), @CompanyName NVARCHAR(40), @ReturnID NCHAR(5) OUTPUT
AS 
BEGIN
INSERT INTO Customers(CustomerID, CompanyName) VALUES (@CustomerID, @CompanyName)
IF (@@ERROR <>0)
  BEGIN
    UPDATE Customers
    SET Customers.CustomerID=@CustomerID, Customers.CompanyName=@CompanyName
    WHERE Customers.CustomerID=@CustomerID
    PRINT('Se realizó un UPDATE')
  END
ELSE 
  BEGIN
    PRINT('Se realizó un INSERT')
  END
SELECT @ReturnID=CustomerID FROM Customers c WHERE c.CustomerID = @CustomerID
END

-- @@ERROR es una variable del sistema en SQL Server que devuelve el número del último error ocurrido;
-- devuelve cero si no hubo error. 
-- Es útil para detectar fallos inmediatamente después de ejecutar una declaración SQL.