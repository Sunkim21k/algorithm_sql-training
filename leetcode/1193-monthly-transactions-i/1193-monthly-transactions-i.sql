# Write your MySQL query statement below
SELECT
    DATE_FORMAT(TRANS_DATE,'%Y-%m') AS 'month',
    country,
    COUNT(*) AS trans_count,
    SUM(IF(state = 'approved',1,0)) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(IF(state = 'approved',amount,0)) AS approved_total_amount
FROM
    TRANSACTIONS
GROUP BY
    DATE_FORMAT(TRANS_DATE,'%Y-%m'),
    country