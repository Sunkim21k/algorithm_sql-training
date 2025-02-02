# Write your MySQL query statement below
WITH user_delivery_list AS (
    SELECT
        *,
        CASE
            WHEN order_date = customer_pref_delivery_date THEN 'immediate'
            ELSE 'scheduled'
        END AS is_check,
        ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date ASC) AS rn
    FROM
        DELIVERY
)
SELECT
    ROUND((SUM(IF(is_check = 'immediate',1,0)) / COUNT(*))*100,2) AS immediate_percentage
FROM
    (    
        SELECT 
            is_check
        FROM
            user_delivery_list
        WHERE
            rn = 1
    ) as D