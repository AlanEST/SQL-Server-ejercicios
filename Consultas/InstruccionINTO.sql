IF OBJECT_ID('CustomerCopy') IS NOT NULL  --Primero verificamos si la tabla ya existe en la BD
BEGIN
  DROP TABLE CustomerCopy --Borramos la tabla
END

SELECT CustomerID, CompanyName  --Campos a guardar en la nueva tabla
INTO CustomerCopy
FROM Customers