# Write your MySQL query statement below
WITH high_unit AS
(
    SELECT
        product_id,
        SUM(unit) AS unit
    FROM
        ORDERS
    WHERE
        ORDER_DATE LIKE '2020-02%'
    GROUP BY
        product_id
    HAVING
        SUM(unit) >= 100
)
SELECT
    product_name,
    unit
FROM
    PRODUCTS AS P
INNER JOIN
    high_unit AS H
    ON P.PRODUCT_ID = H.PRODUCT_ID;