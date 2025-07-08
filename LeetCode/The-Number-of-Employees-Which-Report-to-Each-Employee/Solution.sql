# Write your MySQL query statement below
SELECT
    E1.employee_id,
    E1.name,
    COUNT(DISTINCT E.employee_id) AS reports_count,
    ROUND(AVG(E.age),0) AS average_age
FROM
    EMPLOYEES AS E
LEFT JOIN
    EMPLOYEES AS E1
    ON E.reports_to = E1.employee_id
WHERE
    E1.name IS NOT NULL
GROUP BY
    E1.employee_id,
    E1.name
ORDER BY
    1 ASC;