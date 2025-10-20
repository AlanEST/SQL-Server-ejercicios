CREATE FUNCTION ClienteporPais (@Country NVARCHAR(15)) 
RETURNS @TablaPais TABLE (CustomerID NCHAR(5), 
                        CompanyName NVARCHAR(40), 
                        ContactName NVARCHAR(30),
                        Country NVARCHAR(15))
AS
BEGIN
  INSERT INTO @TablaPais
  SELECT CustomerID, CompanyName, ContactName, Country FROM Customers WHERE Country=@Country
  RETURN
END