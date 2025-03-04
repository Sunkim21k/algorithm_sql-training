-- 코드를 입력하세요
# WITH MAX_PRICE_BY_CATEGORY AS (
#     SELECT
#         CATEGORY,
#         MAX(PRICE) AS MAX_PRICE
#     FROM
#         FOOD_PRODUCT
#     WHERE
#         CATEGORY IN ('과자','국','김치','식용유')
#     GROUP BY
#         CATEGORY
# )

# SELECT
#     F.CATEGORY,
#     M.MAX_PRICE,
#     F.PRODUCT_NAME
# FROM
#     MAX_PRICE_BY_CATEGORY M
# JOIN
#     FOOD_PRODUCT F
# ON
#     M.CATEGORY = F.CATEGORY
#     AND M.MAX_PRICE = F.PRICE
# ORDER BY
    # M.MAX_PRICE DESC;
    
/*
 - '과자','국','김치','식용유'별 제일 비싼 가격, 이름 조회
 - 식품 가격 기준 내림차순 정렬
*/    

WITH MAX_PRICE_LIST AS (
    SELECT
        CATEGORY,
        PRICE,
        PRODUCT_NAME,
        ROW_NUMBER() OVER(PARTITION BY CATEGORY ORDER BY PRICE DESC) AS RN
    FROM
        FOOD_PRODUCT
    WHERE
        CATEGORY IN ('과자','국','김치','식용유')
)
SELECT
    CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM
    MAX_PRICE_LIST
WHERE
    RN = 1
ORDER BY
    2 DESC;