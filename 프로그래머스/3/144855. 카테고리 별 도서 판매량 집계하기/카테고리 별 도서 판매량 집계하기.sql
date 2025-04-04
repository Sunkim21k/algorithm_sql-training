-- 코드를 입력하세요
SELECT
    B.CATEGORY,
    SUM(SALES) AS TOTAL_SALES
FROM
    BOOK AS B
LEFT JOIN
    BOOK_SALES AS BS
ON
    B.BOOK_ID = BS.BOOK_ID
WHERE
    BS.SALES_DATE LIKE ('%2022-01%')
GROUP BY
    B.CATEGORY
ORDER BY
    B.CATEGORY;