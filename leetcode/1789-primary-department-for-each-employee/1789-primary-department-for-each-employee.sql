# Write your MySQL query statement below
WITH primary_check AS (
SELECT
    EMPLOYEE_ID,
    DEPARTMENT_ID
FROM
    EMPLOYEE
WHERE
    PRIMARY_FLAG = 'Y'
GROUP BY
    EMPLOYEE_ID
)
SELECT
    EMPLOYEE_ID,
    DEPARTMENT_ID
FROM
    EMPLOYEE
WHERE
    EMPLOYEE_ID NOT IN (
        SELECT
            employee_id
        FROM
            primary_check
    )

UNION

SELECT
    EMPLOYEE_ID,
    DEPARTMENT_ID
FROM
    primary_check