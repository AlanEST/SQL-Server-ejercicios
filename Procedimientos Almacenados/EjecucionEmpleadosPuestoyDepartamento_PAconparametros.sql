DECLARE @id INT
DECLARE @Nombre NVARCHAR(50)
DECLARE @ApellidoMaterno NVARCHAR(50)
DECLARE @ApellidoPaterno NVARCHAR(50)
DECLARE @Puesto NVARCHAR(50)
DECLARE @Departamento NVARCHAR(50)

EXECUTE AdventureWorks2008.dbo.EmplePuestoyDepartamentoconPE
@EmpleadoId = 3, 
@EmpleadoIdr = @id OUTPUT, 
@Nombrer = @Nombre OUTPUT, 
@ApellidoMaternor = @ApellidoMaterno OUTPUT,
@ApellidoPaternor = @ApellidoPaterno OUTPUT, 
@Puestor = @Puesto OUTPUT, 
@Departamentor = @Departamento OUTPUT

SELECT @id AS BusinessEntityID , @Nombre AS FirstName, @ApellidoMaterno AS MiddleName, 
@ApellidoPaterno AS LastName, @Puesto AS Puesto, @Departamento AS Departamento
