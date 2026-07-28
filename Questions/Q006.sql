/*
==========================================================

Question No : Q006

Business Question:
Which employees joined in the last 2 years?

Difficulty:
Easy

Concepts Used:
YEAR(), WHERE

==========================================================

Answer:
*/

SELECT *
FROM Employees
WHERE YEAR(HireDate) IN (2023, 2024);