BEGIN TRANSACTION 
  UPDATE HumanResources.Employee SET NationalIDNumber = 987654321 WHERE BusinessEntityID = 291
  INSERT INTO HumanResources.Employee(BusinessEntityID, NationalIDNumber, LoginID, JobTitle, BirthDate, MaritalStatus,
  Gender, HireDate) 
  VALUES (293, 888888888, 'adventure-works\Catherin2','Desempleado2', '1994-12-10', 'S', 'F','2021-10-10')
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

-- Tener cuidado con las llaves foráneas (recuerda que las tablas se vinculan entre llaves primaria-foránea)
-- Introducir los datos en el formato adecuado para cada tipo de dato