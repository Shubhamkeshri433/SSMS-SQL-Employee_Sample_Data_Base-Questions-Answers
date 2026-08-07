--Q20. Identify departments where every employee earns above 100,000.

SELECT DepartmentID
FROM Employees
GROUP BY DepartmentID
HAVING MIN(Salary) >= 100000;

--No employee earns above 100,000 by departments. 