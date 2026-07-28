/*
==========================================================

Question No : Q004

Business Question:
Which employees earn more than the company's average salary?

Difficulty:
Easy

Concepts Used:
AVG(), Subquery

==========================================================

Answer:
*/

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);