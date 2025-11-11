SELECT DISTINCT e.EmployeeID, RegionDescription  FROM Employees e
INNER JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
INNER JOIN Territories t ON et.TerritoryID = t.TerritoryID
INNER JOIN Region r ON t.RegionID = r.RegionID
WHERE 'Northern' IN (SELECT RegionDescription  FROM Region r WHERE t.RegionID = r.RegionID)

-- Es necesario el INNER JOIN con la tabla Region debido a que se traé el campo RegionDescription

SELECT DISTINCT e.EmployeeID, RegionDescription  FROM Employees e
INNER JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
INNER JOIN Territories t ON et.TerritoryID = t.TerritoryID
INNER JOIN Region r ON t.RegionID = r.RegionID
WHERE r.RegionDescription = 'Northern'

SELECT DISTINCT e.EmployeeID, RegionDescription  FROM Employees e
INNER JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
INNER JOIN Territories t ON et.TerritoryID = t.TerritoryID
INNER JOIN Region r ON t.RegionID = r.RegionID
WHERE RegionDescription IN (SELECT RegionDescription  FROM Region r WHERE RegionDescription = 'Northern')