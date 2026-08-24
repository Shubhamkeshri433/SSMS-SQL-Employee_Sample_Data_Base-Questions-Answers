--Q27. Calculate the average employee tenure for every department.

SELECT 
	DepartmentID,
	AVG(DATEDIFF(DAY,HireDate,GETDATE()) / 365.25 ) Emp_tenure
FROM Employees