--Q037. Which project has the highest number of employees assigned?

SELECT
	TOP 1
	P.ProjectID,
	P.ProjectName,
	Count(EP.EmployeeID) N_emp
FROM Projects P
LEFT JOIN EmployeeProjects EP
ON EP.ProjectID = P.ProjectID
GROUP BY P.ProjectID, P.ProjectName
ORDER BY N_emp DESC;