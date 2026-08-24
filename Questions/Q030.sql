--Q30. Predict next year's payroll assuming every employee gets a 7% increment.

SELECT
	SUM(Salary) Sal,
	SUM(Salary * 1.07)   AS next_year_payroll
FROM Employees;