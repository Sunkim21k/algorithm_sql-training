# Write your MySQL query statement below
SELECT
    euni.unique_id,
    e.name
FROM
    EmployeeUNI AS euni
RIGHT JOIN
    Employees AS e
ON
    euni.id = e.id

