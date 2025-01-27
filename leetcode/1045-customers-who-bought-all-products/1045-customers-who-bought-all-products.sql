# Write your MySQL query statement below
SELECT
    customer_id
FROM
    CUSTOMER
GROUP BY
    customer_id
HAVING
    COUNT(DISTINCT product_key) IN (SELECT COUNT(DISTINCT product_key) AS cnt FROM PRODUCT)

