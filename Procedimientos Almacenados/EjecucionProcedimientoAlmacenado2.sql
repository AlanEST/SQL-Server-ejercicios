DECLARE @back NCHAR(5)  --se declara una variable que obtenga el valor de retorno del procedimiento (mismo tipo de dato y longitud)
EXECUTE InsertUpdate_Customers 'ABABA', 'Puzzle', @back OUTPUT   -- EXECUTE Nombre del procedimiento | valores a insertar | variable recién
--Al ejecutar debe aparecer uno de los mensajes declarados en el procedimiento
SELECT @back -- Para conocer el valor de la variable de retorno 

