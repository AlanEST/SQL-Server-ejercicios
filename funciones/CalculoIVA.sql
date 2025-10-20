CREATE FUNCTION CalculoIVA (@Price MONEY) RETURNS MONEY
AS
BEGIN
	DECLARE @IVA MONEY       -- DECLARE se utiliza para declarar variables
  SET @IVA = @Price * 1.16 -- SET se utiliza para Modificar o asignar valores
  RETURN @IVA              -- RETURN se utiliza para obtener el resultado
END