/*
========================================================

Question No : 001

Business Question:
Q11. Rank employees by salary within each department.

Difficulty:
INTERMEDIATE

Concepts:
COUNT(), GROUP BY

========================================================
*/

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