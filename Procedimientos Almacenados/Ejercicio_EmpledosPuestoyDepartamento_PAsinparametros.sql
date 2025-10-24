CREATE PROCEDURE EmpleadosPuestoyDepartamento --Nombre del procedimiento
AS  --Entre AS y GO se coloca el código a guardar
SELECT e.BusinessEntityID AS IDEmpleado, p.FirstName AS Nombre, p.MiddleName AS ApellidoMaterno ,p.LastName AS ApellidoPaterno,
e.JobTitle AS Puesto, d.Name AS Departamento
FROM HumanResources.Employee e 
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
JOIN HumanResources.EmployeeDepartmentHistory edh ON e.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d ON edh.DepartmentID = d.DepartmentID
WHERE edh.EndDate IS NULL
ORDER BY e.BusinessEntityID ASC
GO

-- La ejecución en este caso es: EXECUTE EmpleadosPuestoyDepartamento