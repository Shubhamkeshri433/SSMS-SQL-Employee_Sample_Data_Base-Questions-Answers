--Q040. Which department has assigned the most employees to projects?

SELECT TOP 1
	E.DepartmentID,
	COUNT(EP.EmployeeID) N_emp
FROM Employees E
LEFT JOIN EmployeeProjects EP
ON E.EmployeeID = EP.EmployeeID
GROUP BY E.DepartmentID
ORDER BY N_emp DESC;