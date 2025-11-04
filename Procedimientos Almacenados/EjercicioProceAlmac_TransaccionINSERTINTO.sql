CREATE PROCEDURE InsertarentablaProductionProduct
@Nombre NVARCHAR(50),
@NumeroProducto NVARCHAR(25),
@Niveldeinventario SMALLINT,
@PuntodeResurtido SMALLINT,
@CostoEstandar MONEY,
@PreciodeLista MONEY,
@DiasparaFabricar INT,
@Fechainicioventa DATETIME
AS 
BEGIN
BEGIN TRANSACTION --El BEGIN TRANSACTION no utiliza END al final
  INSERT INTO AdventureWorks2008.Production.Product (Name, ProductNumber, SafetyStockLevel, ReorderPoint,
  StandardCost,ListPrice, DaysToManufacture, SellStartDate) 
  VALUES (@Nombre, @NumeroProducto, @Niveldeinventario, @PuntodeResurtido, @CostoEstandar, @PreciodeLista,
  @DiasparaFabricar, @Fechainicioventa)
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
END


-- Para ejecutarlo: EXECUTE AdventureWorks2008.dbo.InsertarentablaProductionProduct 'Apaches', 'CHA-BE1-11',1010,510,70,90,2, '2025-11-04'
-- Es necesario cambiar el ProductNumber 'CHA-BE1-11' por algún otro