# Write your MySQL query statement below
WITH total_amount_day AS(
    SELECT
        C1.visited_on,
        (
            SELECT 
                SUM(C2.AMOUNT)
            FROM
                CUSTOMER AS C2
            WHERE
                C2.VISITED_ON BETWEEN DATE_SUB(C1.VISITED_ON, INTERVAL 6 DAY) AND C1.VISITED_ON
        ) AS amount
    FROM
        CUSTOMER AS C1 
    WHERE
        C1.VISITED_ON >= (SELECT MIN(VISITED_ON) + 6 FROM CUSTOMER)
    GROUP BY
        C1.visited_on
)

SELECT
    visited_on,
    amount,
    ROUND(amount / 7,2) AS average_amount
FROM
    total_amount_day