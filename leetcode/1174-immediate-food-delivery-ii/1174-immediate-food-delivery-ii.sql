# Write your MySQL query statement below
-- WITH user_delivery_list AS (
--     SELECT
--         *,
--         CASE
--             WHEN order_date = customer_pref_delivery_date THEN 'immediate'
--             ELSE 'scheduled'
--         END AS is_check,
--         ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date ASC) AS rn
--     FROM
--         DELIVERY
-- )
-- SELECT
--     ROUND((SUM(IF(is_check = 'immediate',1,0)) / COUNT(*))*100,2) AS immediate_percentage
-- FROM
--     (    
--         SELECT 
--             is_check
--         FROM
--             user_delivery_list
--         WHERE
--             rn = 1
--     ) as D

WITH CHECK_ORDER_LIST AS (
    SELECT
        ROW_NUMBER() OVER(PARTITION BY CUSTOMER_ID ORDER BY ORDER_DATE DESC) AS RN,
        CUSTOMER_ID,
        CASE 
            WHEN ORDER_DATE = CUSTOMER_PREF_DELIVERY_DATE THEN 'IMMEDIATE'
            ELSE 'SCHEDULED'
        END AS CHECK_ORDER
    FROM
        DELIVERY
), CHECK_IM AS (
    SELECT
        COUNT(*) AS CNT
    FROM
        CHECK_ORDER_LIST
    WHERE
        RN = 1
        AND CHECK_ORDER LIKE 'IMMEDIATE'
)
SELECT
    ROUND((SELECT CNT FROM CHECK_IM) / COUNT(DISTINCT CUSTOMER_ID) * 100,2) AS immediate_percentage
FROM
    DELIVERY