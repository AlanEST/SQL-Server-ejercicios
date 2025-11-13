DECLARE @a nvarchar(1) = '5'
DECLARE @b nvarchar(1) = '2'
DECLARE @c nvarchar(10) = '2007-05-16'
DECLARE @d nvarchar(10) = '21:00'
DECLARE @e nvarchar(10) = '03:30:25'
DECLARE @f nvarchar(10) = '2008-09-29'



SELECT CAST(@a AS INT) + CAST(@b AS INT)
SELECT CAST(@c AS DATE), CAST(@d AS TIME), CAST(@e as TIME), CAST(@f AS DATETIME)