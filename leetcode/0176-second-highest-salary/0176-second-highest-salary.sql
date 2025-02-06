# Write your MySQL query statement below
SELECT
    MAX(salary) AS SecondHighestSalary
FROM
    EMPLOYEE
WHERE
    salary NOT IN (
        SELECT
            MAX(salary)
        FROM
            EMPLOYEE
    );
