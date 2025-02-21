-- 코드를 입력하세요
WITH MAX_PRICE_BY_CATEGORY AS (
    SELECT
        CATEGORY,
        MAX(PRICE) AS MAX_PRICE
    FROM
        FOOD_PRODUCT
    WHERE
        CATEGORY IN ('과자','국','김치','식용유')
    GROUP BY
        CATEGORY
)

SELECT
    F.CATEGORY,
    M.MAX_PRICE,
    F.PRODUCT_NAME
FROM
    MAX_PRICE_BY_CATEGORY M
JOIN
    FOOD_PRODUCT F
ON
    M.CATEGORY = F.CATEGORY
    AND M.MAX_PRICE = F.PRICE
ORDER BY
    M.MAX_PRICE DESC;
