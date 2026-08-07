-- Q19. Find employees hired in the same year as the highest-paid employee.

--DOESN'T WORKS IF THERE ARE MORE THEN ONE HIGHEST SALARY
SELECT * FROM Employees E1          
WHERE YEAR(HireDate) = (
		SELECT TOP 1 YEAR(HireDate)
		FROM Employees E2
		ORDER BY Salary DESC
		)

--WORKS IF THERE ARE MORE THEN ONE HIGHEST SALARY
SELECT * FROM Employees E1
WHERE YEAR(HireDate) IN (
		SELECT TOP 1 WITH TIES YEAR(HireDate)
		FROM Employees E2
		ORDER BY Salary DESC
		);