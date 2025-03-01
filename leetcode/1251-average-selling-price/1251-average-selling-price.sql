# Write your MySQL query statement below
-- SELECT
--     p.product_id,
--     (CASE
--         WHEN SUM(COALESCE(us.units,0)) = 0 THEN 0 
--         ELSE ROUND(SUM(p.price * us.units) / SUM(us.units),2) 
--     END) AS average_price
-- FROM
--     Prices AS p
-- LEFT JOIN
--     UnitsSold AS us
-- ON
--     p.product_id = us.product_id
--     AND (us.purchase_date BETWEEN p.start_date AND p.end_date)
-- GROUP BY
--     p.product_id;














SELECT
    p.product_id,
    IFNULL(ROUND(SUM(U.units * P.price) / SUM(U.units), 2),0) AS average_price
FROM
    PRICES AS P
LEFT JOIN
    UNITSSOLD AS U
    ON P.PRODUCT_ID = U.PRODUCT_ID
    AND (U.PURCHASE_DATE BETWEEN P.START_DATE AND P.END_DATE)
GROUP BY
    P.product_id