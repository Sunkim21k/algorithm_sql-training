# Write your MySQL query statement below
-- SELECT
--     employee_id,
--     (CASE
--         WHEN (employee_id % 2 = 0) OR LEFT(name,1) = 'M' THEN 0
--         ELSE salary
--     END) AS bonus
-- FROM
--     Employees
-- ORDER BY
--     employee_id ASC;


SELECT
    employee_id,
    CASE
        WHEN LEFT(NAME, 1) = 'M' OR (employee_id % 2) = 0 THEN 0
        ELSE salary
    END AS bonus
FROM
    EMPLOYEES
ORDER BY
    1 ASC;
