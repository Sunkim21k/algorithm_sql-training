# Write your MySQL query statement below
-- SELECT
--     E2.employee_id,
--     E2.name,
--     COUNT(E1.reports_to) AS reports_count,
--     ROUND(AVG(E1.age)) AS average_age
-- FROM
--     Employees AS E1
-- LEFT JOIN
--     Employees AS E2
-- ON
--     E1.reports_to = E2.employee_id
-- WHERE
--     E2.employee_id IS NOT NULL
-- GROUP BY
--     E2.employee_id,
--     E2.name
-- ORDER BY
--     E2.employee_id ASC;

WITH FIND_NAME AS (
    SELECT
        reports_to,
        COUNT(*) AS reports_count,
        ROUND(AVG(age)) AS average_age
    FROM
        EMPLOYEES
    WHERE
        reports_to IS NOT NULL
    GROUP BY
        reports_to
)

SELECT
    employee_id,
    name,
    reports_count,
    average_age
FROM
    EMPLOYEES AS E
INNER JOIN
    FIND_NAME AS F
    ON E.EMPLOYEE_ID = F.REPORTS_TO
ORDER BY
    1 ASC;