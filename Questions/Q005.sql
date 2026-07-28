/*
==========================================================

Question No : Q005

Business Question:
List the Top 10 highest-paid employees.

Difficulty:
Easy

Concepts Used:
TOP, ORDER BY

==========================================================

Answer:
*/

SELECT TOP 10 *
FROM Employees
ORDER BY Salary DESC;