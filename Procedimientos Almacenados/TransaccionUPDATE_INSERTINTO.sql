BEGIN TRANSACTION 
  UPDATE Customers SET PostalCode ='50214'   WHERE CustomerID='ALFKI'
  INSERT INTO Customers(CustomerID, CompanyName) VALUES ('BBALA','Manzana')
  IF (@@Error<>0)
    BEGIN
      ROLLBACK
      PRINT('ERROR')
    END
  ELSE
    BEGIN
      COMMIT
      PRINT('BIEN')
    END

-- En esta transacción, deseamos hacer dos cambios un UPDATE y un INSERTO INTO en la tabla Customers.
-- El UPDATE lo hacemos sobre un CustomerID específico que ya existe en la BD (CustomerID = 'ALFKI') solo que
-- cambiamos su PostalCode por uno conocido (PostalCode = '50214')
-- El INSERTO INTO lo hacemos insertando primero un CustomerID que ya existía (CustomerID = 'ALFKI', CompanyName='Manzana'), lo que
-- nos arroja un error y nos permite ver que ROLLBACK no permite hacer ningún cambio en la BD
-- después insertamos un CustomerID completamente nuevo (CustomerID = 'BBALA', CompanyName='Manzana'), con lo que
-- al no existir un error el COMMIT nos permite hacer los cambios en la BD, tanto el UPDATE como el INSERT INTO, cada uno con
-- sus respectivas modificaciones (Si hacemos la consulta nos debe mostrar estos cambios).