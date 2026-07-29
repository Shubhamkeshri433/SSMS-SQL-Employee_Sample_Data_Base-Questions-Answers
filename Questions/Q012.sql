--Q12. Find employees earning more than their department's average salary.


SELECT * 
FROM Employees e
WHERE Salary > (
	SELECT AVG(Salary) 
	FROM Employees
	WHERE DepartmentID = e.departmentID);