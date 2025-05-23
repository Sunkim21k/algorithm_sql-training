-- 코드를 입력하세요
# SELECT  
#     CASE
#         WHEN PRICE BETWEEN 10000 AND 19999 THEN 10000
#         WHEN PRICE BETWEEN 20000 AND 29999 THEN 20000
#         WHEN PRICE BETWEEN 30000 AND 39999 THEN 30000
#         WHEN PRICE BETWEEN 40000 AND 49999 THEN 40000
#         WHEN PRICE BETWEEN 50000 AND 59999 THEN 50000
#         WHEN PRICE BETWEEN 60000 AND 69999 THEN 60000
#         WHEN PRICE BETWEEN 70000 AND 79999 THEN 70000
#         WHEN PRICE BETWEEN 80000 AND 89999 THEN 80000
#         WHEN PRICE BETWEEN 90000 AND 99999 THEN 90000
#         ELSE 0        
#     END AS PRICE_GROUP
#         ,COUNT(*) AS PRODUCTS
#   FROM  PRODUCT
#  GROUP
#     BY  PRICE_GROUP
#  ORDER
#     BY  PRICE_GROUP ASC;

SELECT
    CASE
        WHEN PRICE >= 90000 THEN 90000
        WHEN PRICE >= 80000 THEN 80000
        WHEN PRICE >= 70000 THEN 70000
        WHEN PRICE >= 60000 THEN 60000
        WHEN PRICE >= 50000 THEN 50000
        WHEN PRICE >= 40000 THEN 40000
        WHEN PRICE >= 30000 THEN 30000
        WHEN PRICE >= 20000 THEN 20000
        WHEN PRICE >= 10000 THEN 10000
        ELSE 0
    END AS PRICE_GROUP,
    COUNT(*) AS PRODUCTS
FROM
    PRODUCT
GROUP BY
    PRICE_GROUP
ORDER BY
    1 ASC;