--Q6. Which employees joined in the last 2 years?

SELECT *
FROM Employees
WHERE YEAR(HireDate) IN (2023, 2024);