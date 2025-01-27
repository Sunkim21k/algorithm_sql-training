# Write your MySQL query statement below
SELECT
    stock_name,
    SUM(IF(OPERATION = 'SELL',PRICE,0)) - SUM(IF(OPERATION = 'BUY',PRICE,0)) AS capital_gain_loss
FROM
    STOCKS
GROUP BY
    STOCK_NAME;