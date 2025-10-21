CREATE FUNCTION ClientesAtendidosporEmpleado (@EmpleadoId INT) RETURNS TABLE
RETURN (SELECT EmployeeID, CustomerID FROM Orders WHERE EmployeeID = @EmpleadoId)

--Su ejecución es SELECT * FROM dbo.ClientesAtendidosporEmpleado(3)