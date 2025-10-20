CREATE TRIGGER StockUpdate
ON [Order Details]
FOR INSERT
AS 
BEGIN 
  DECLARE @Cantidad SMALLINT, @ProductID INT, @Stock SMALLINT
  SELECT @Cantidad=Quantity , @ProductID=ProductID  FROM INSERTED
  SELECT @Stock=UnitsInStock FROM Products WHERE ProductID=@ProductID
  UPDATE Products SET UnitsInStock= @Stock - @Cantidad WHERE ProductID=@ProductID
END