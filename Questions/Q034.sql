--Q034. Find employees who are not assigned to any project.

SELECT
	E.EmployeeID
FROM Employees E
LEFT JOIN EmployeeProjects EP
ON E.EmployeeID = EP.EmployeeID
WHERE EP.ProjectID IS NULL;