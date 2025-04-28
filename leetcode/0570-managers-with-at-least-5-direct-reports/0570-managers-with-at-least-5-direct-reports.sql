# Write your MySQL query statement below
-- SELECT
--     name
-- FROM
--     EMPLOYEE
-- WHERE
--     id IN (
--         SELECT
--             managerId
--         FROM
--             Employee
--         GROUP BY
--             managerId
--         HAVING
--             COUNT(managerId) >= 5
--     );

WITH CHECK_MANAGER AS (
    SELECT
        managerId,
        COUNT(*) AS cnt
    FROM
        EMPLOYEE
    WHERE
        managerId IS NOT NULL
    GROUP BY
        managerId
    HAVING
        cnt >= 5
)
SELECT
    name
FROM
    EMPLOYEE
WHERE
    id IN (SELECT managerId FROM CHECK_MANAGER);
