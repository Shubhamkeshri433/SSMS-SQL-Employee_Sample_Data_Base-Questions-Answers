--Q035. Which employees are working on more than one project?

SELECT
	E.EmployeeID,
	E.FirstName,
	COUNT(EP.ProjectID) Projects
FROM Employees E
LEFT JOIN EmployeeProjects EP
ON E.EmployeeID = EP.EmployeeID
GROUP BY E.EmployeeID, E.FirstName
HAVING COUNT(EP.ProjectID) > 1;