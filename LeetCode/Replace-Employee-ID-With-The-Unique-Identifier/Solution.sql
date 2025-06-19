# Write your MySQL query statement below
SELECT
    EU.unique_id,
    E.name
FROM
    EMPLOYEES AS E
LEFT JOIN
    EMPLOYEEUNI AS EU
    ON E.ID = EU.ID
