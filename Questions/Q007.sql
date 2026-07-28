/*
==========================================================

Question No : Q007

Business Question:
How many employees were hired each year?

Difficulty:
Easy

Concepts Used:
COUNT(), YEAR(), GROUP BY

==========================================================

Answer:
*/

SELECT
    YEAR(HireDate) AS HireYear,
    COUNT(EmployeeID) AS TotalEmployees
FROM Employees
GROUP BY YEAR(HireDate);