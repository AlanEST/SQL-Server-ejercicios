ALTER TRIGGER ProductosUpdate  --Nombre del Trigger
ON [Order Details] --Tabla a la que estará anclado el Trigger
AFTER INSERT -- Primer se hace el INSERT y después se ejecuta el Trigger
AS 
BEGIN 
  DECLARE @Cantidad SMALLINT, @EmployeeID INT, @Productos INT, @Ordenid INT --Variables a ocupar
  SELECT @Cantidad=Quantity, @Ordenid =OrderID FROM INSERTED --Ocupamos Quantity y OrderID de los datos insertados
  SELECT @EmployeeID=EmployeeID  FROM Orders WHERE OrderID=@Ordenid --Extraemos el EmployeeID a partir del OrderID insertado
  SELECT @Productos=N_Productos FROM Employees WHERE EmployeeID=@EmployeeID --Llamamos al campo N_Products solo para el empleado deseado
  UPDATE Employees SET N_Productos = @Productos + @Cantidad --Actualizamos N_Products de la tabla Employees, con el registro de la cantidad vendida
  WHERE EmployeeID=@EmployeeID --solo para el empleado deseado
END
