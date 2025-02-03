# Write your MySQL query statement below
SELECT
    name
FROM
    EMPLOYEE
WHERE
    ID IN (
SELECT
    MANAGERID
FROM
    EMPLOYEE
GROUP BY
    MANAGERID
HAVING
    COUNT(MANAGERID) >= 5
    );