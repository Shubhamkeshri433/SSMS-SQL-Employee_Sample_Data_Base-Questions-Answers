--Q16. Find employees hired before the average hire date of their department.

SELECT *
FROM Employees E
WHERE HireDate < (
	 SELECT DATEADD(
		DAY,
		AVG(DATEDIFF(DAY,'19000101',HireDate)),
		'19000101'
	)
	FROM Employees
	WHERE DepartmentID = E.DepartmentID
);