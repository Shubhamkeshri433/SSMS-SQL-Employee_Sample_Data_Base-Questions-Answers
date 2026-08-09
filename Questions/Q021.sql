--Q21. If every employee receives a 10% raise, what will be the new payroll cost?

SELECT 
	SUM(Salary) AS Old_payroll, 
	SUM(Salary*1.10) New_payroll,
	SUM(Salary*1.10) - SUM(Salary) AS Additional_Cost
FROM Employees;