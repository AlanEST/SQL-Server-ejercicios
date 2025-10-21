CREATE PROCEDURE CustomerCountry --Nombre del procedimiento
AS  --Entre AS y GO se coloca el código a guardar
SELECT * FROM Customers
WHERE Country='Mexico'
GO

--Para ejecutar el procedimiento EXECUTE Nombre del procedimiento, en este caso EXECUTE CustomerCountry 