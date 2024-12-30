# Write your MySQL query statement below
SELECT
    E2.employee_id,
    E2.name,
    COUNT(E1.reports_to) AS reports_count,
    ROUND(AVG(E1.age)) AS average_age
FROM
    Employees AS E1
LEFT JOIN
    Employees AS E2
ON
    E1.reports_to = E2.employee_id
WHERE
    E2.employee_id IS NOT NULL
GROUP BY
    E2.employee_id,
    E2.name;