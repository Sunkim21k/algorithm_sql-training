# Write your MySQL query statement below
-- SELECT
--     MAX(salary) AS SecondHighestSalary
-- FROM
--     EMPLOYEE
-- WHERE
--     salary NOT IN (
--         SELECT
--             MAX(salary)
--         FROM
--             EMPLOYEE
--     );

WITH CHECK_SALARY AS (
    SELECT 
        MAX(SALARY) AS SALARY
    FROM
        EMPLOYEE
)
SELECT
    MAX(SALARY) AS SecondHighestSalary
FROM
    EMPLOYEE
WHERE
    SALARY NOT IN (SELECT SALARY FROM CHECK_SALARY)