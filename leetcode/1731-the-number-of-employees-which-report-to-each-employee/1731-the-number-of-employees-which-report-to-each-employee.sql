# Write your MySQL query statement below
SELECT
    E2.employee_id,
    E2.name,
    COUNT(*) AS reports_count,
    ROUND(AVG(E1.age),0) AS average_age
FROM
    EMPLOYEES AS E1
LEFT JOIN
    EMPLOYEES AS E2
    ON E1.reports_to = E2.employee_id
WHERE
    E1.reports_to IS NOT NULL
GROUP BY
    E2.employee_id
ORDER BY
    1 ASC;