--Q11. Rank employees by salary within each department.


SELECT 
	EmployeeID,
	FirstName,
	LastName,
	Salary,
	DepartmentID,
	RANK() OVER(
	PARTITION BY DepartmentID
	ORDER BY Salary DESC) AS RankNo
FROM Employees
ORDER BY DepartmentID, RankNo;