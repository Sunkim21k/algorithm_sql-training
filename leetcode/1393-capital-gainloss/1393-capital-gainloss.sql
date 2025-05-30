# Write your MySQL query statement below
SELECT
    stock_name,
    SUM(price) AS capital_gain_loss
FROM
    (
        SELECT
            stock_name,
            operation_day,
            CASE
                WHEN operation LIKE 'Buy' THEN -price
                ELSE price
            END price
        FROM
            stocks
    ) AS t1
GROUP BY
    stock_name