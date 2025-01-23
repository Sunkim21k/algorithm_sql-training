# Write your MySQL query statement below
SELECT
    b.name AS Employee
FROM
    Employee AS a
LEFT JOIN
    Employee AS b
    ON a.id = b.managerId
WHERE
    b.salary >= a.salary;