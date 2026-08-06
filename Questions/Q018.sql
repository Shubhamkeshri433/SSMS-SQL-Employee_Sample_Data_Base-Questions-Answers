--Q18. Calculate total salary paid by hiring year.

SELECT YEAR(HireDate) AS Hire_Year, SUM(Salary) AS Sum_Salary
FROM Employees
GROUP BY YEAR(HireDate)
ORDER BY Hire_Year;