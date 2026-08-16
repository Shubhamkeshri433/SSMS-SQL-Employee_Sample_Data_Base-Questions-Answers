--Q23. Find employees whose salary is at least 30% above their department average.

SELECT
	Employeeid,
	FirstName,
	LastName,
	DepartmentID,
	Salary
FROM Employees E
WHERE Salary >= (
	SELECT AVG(Salary) * 1.30 Avg_sal
	FROM Employees Em
	WHERE Em.DepartmentID = E.DepartmentID)