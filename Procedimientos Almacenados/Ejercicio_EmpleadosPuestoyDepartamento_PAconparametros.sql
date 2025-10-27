ALTER PROCEDURE EmplePuestoyDepartamentoconPE 
@EmpleadoId int, 
@EmpleadoIdr INT OUTPUT, @Nombrer NVARCHAR(50) OUTPUT, @ApellidoMaternor NVARCHAR(50) OUTPUT,
@ApellidoPaternor NVARCHAR(50) OUTPUT, 
@Puestor NVARCHAR(50) OUTPUT, @Departamentor NVARCHAR(50) OUTPUT
AS 
BEGIN
SELECT @EmpleadoIdr=@EmpleadoId, @Nombrer=p.FirstName, @ApellidoMaternor= p.MiddleName ,
@ApellidoPaternor= p.LastName, @Puestor= e.JobTitle, @Departamentor= d.Name
FROM HumanResources.Employee e 
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
JOIN HumanResources.EmployeeDepartmentHistory edh ON e.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d ON edh.DepartmentID = d.DepartmentID
WHERE edh.EndDate IS NULL AND e.BusinessEntityID = @EmpleadoId
ORDER BY e.BusinessEntityID ASC
END