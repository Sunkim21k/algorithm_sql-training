# Write your MySQL query statement below
WITH find_product AS (
    SELECT
        product_id,
        new_price,
        change_date,
        ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS rn
    FROM
        PRODUCTS
    WHERE
        change_date <= '2019-08-16'
),
product_list AS (
    SELECT
        DISTINCT product_id
    FROM
        PRODUCTS
)

SELECT
    P1.product_id,
    IFNULL(FP.NEW_PRICE,10) AS price
FROM
    product_list AS P1
LEFT JOIN
    find_product AS FP
    ON P1.product_id = FP.product_id AND FP.rn = 1;


