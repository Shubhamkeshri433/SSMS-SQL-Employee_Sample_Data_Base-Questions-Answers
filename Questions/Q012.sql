/*
========================================================

Question No : 001

Business Question:
Q12. Find employees earning more than their department's average salary.

Difficulty:
INTERMEDIATE

Concepts:
COUNT(), GROUP BY

========================================================
*/

SELECT * 
FROM Employees e
WHERE Salary > (
	SELECT AVG(Salary) 
	FROM Employees
	WHERE DepartmentID = e.departmentID);