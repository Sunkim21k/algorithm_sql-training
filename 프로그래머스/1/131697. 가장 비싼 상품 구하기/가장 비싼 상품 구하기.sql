-- 코드를 입력하세요
# SELECT  MAX(PRICE) AS MAX_PRICE
#   FROM  PRODUCT;

SELECT
    PRICE AS MAX_PRICE
FROM
    (
        SELECT
            ROW_NUMBER() OVER(ORDER BY PRICE DESC) AS RN,
            PRICE
        FROM
            PRODUCT
    ) F1
WHERE
    RN = 1
