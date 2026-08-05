--Q15. Calculate the cumulative salary expense ordered by hire date.

SELECT 
	EmployeeID,
	FirstName,
	LastName,
	HireDate,
	Salary,
	SUM(Salary) OVER (ORDER BY HireDate) AS cumulative_salary
FROM Employees;