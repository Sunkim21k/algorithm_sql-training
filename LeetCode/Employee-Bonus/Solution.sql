# Write your MySQL query statement below
SELECT
    name,
    bonus
FROM
    EMPLOYEE AS E
LEFT JOIN
    BONUS AS B ON E.empId = B.empId
WHERE
    bonus < 1000
    OR bonus IS NULL;
