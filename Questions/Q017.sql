--Q17. Which hiring year had the maximum number of employees hired?

SELECT TOP 1 WITH TIES 
	YEAR(HireDate) AS HireYear, 
	COUNT(EmployeeID) AS Count_Employees
FROM Employees
GROUP BY YEAR(HireDate)
ORDER BY Count_Employees DESC