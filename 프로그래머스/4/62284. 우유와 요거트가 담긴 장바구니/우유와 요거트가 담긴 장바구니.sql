/*
    1. MILK AND YOGURT
    2. ORDER BY CART_ID ASC
*/
-- 코드를 입력하세요
# WITH CHECK_NAME AS (
#     SELECT 
#         NAME
#     FROM
#         CART_PRODUCTS
#     WHERE
#         CART_ID
# )

SELECT
    CART_ID
FROM
    CART_PRODUCTS
WHERE
    NAME IN ('Milk', 'Yogurt')
GROUP BY
    CART_ID
HAVING
    COUNT(DISTINCT NAME) >= 2
ORDER BY
    CART_ID ASC;