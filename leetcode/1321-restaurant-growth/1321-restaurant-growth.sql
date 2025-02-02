# Write your MySQL query statement below
-- WITH total_amount_day AS(
--     SELECT
--         C1.visited_on,
--         (
--             SELECT 
--                 SUM(C2.AMOUNT)
--             FROM
--                 CUSTOMER AS C2
--             WHERE
--                 C2.VISITED_ON BETWEEN DATE_SUB(C1.VISITED_ON, INTERVAL 6 DAY) AND C1.VISITED_ON
--         ) AS amount
--     FROM
--         CUSTOMER AS C1 
--     WHERE
--         C1.VISITED_ON >= (SELECT MIN(VISITED_ON) + 6 FROM CUSTOMER)
--     GROUP BY
--         C1.visited_on
-- )

-- SELECT
--     visited_on,
--     amount,
--     ROUND(amount / 7,2) AS average_amount
-- FROM
--     total_amount_day











/*
1. avg(seven days)
2. sort visited_on ASC
*/
WITH total_amount_days AS (
    SELECT
        visited_on,
        SUM(SUM(AMOUNT)) OVER (
                    ORDER BY VISITED_ON
                    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
        ROUND(AVG(SUM(AMOUNT)) OVER (
                    ORDER BY VISITED_ON
                    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) AS average_amount
    FROM
        CUSTOMER
    GROUP BY
        visited_on
    -- HAVING
    --     visited_on >= DATE_ADD(visited_on, INTERVAL 6 DAY)
)

SELECT
    *
FROM
    (   
        SELECT
            visited_on,
            amount,
            average_amount
        FROM
            total_amount_days
        WHERE
            visited_on >= (SELECT MIN(visited_on) FROM total_amount_days) + 6
    ) AS list;




