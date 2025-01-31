# Write your MySQL query statement below
SELECT
    U.user_id AS buyer_id,
    U.join_date,
    SUM(IF(YEAR(O.ORDER_DATE) = 2019, 1, 0)) AS orders_in_2019
FROM
    USERS AS U
LEFT JOIN
    ORDERS AS O
    ON O.BUYER_ID = U.USER_ID
GROUP BY
    U.user_id,
    U.JOIN_DATE
ORDER BY
    U.user_id;