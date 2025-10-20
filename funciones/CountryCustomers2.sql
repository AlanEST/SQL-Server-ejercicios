CREATE FUNCTION CountryCustomers2 (@Country NVARCHAR(15)) RETURNS TABLE
RETURN (SELECT CustomerID, CompanyName, Country FROM Customers WHERE Country = @Country)