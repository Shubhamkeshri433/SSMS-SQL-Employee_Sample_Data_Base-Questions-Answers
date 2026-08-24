--Q28. Which department has the oldest workforce based on hire date?

SELECT
	TOP 1
	DepartmentID,
	MIN(HireDate) Oldest_workforce
FROM Employees
GROUP BY DepartmentID
ORDER BY Oldest_workforce;