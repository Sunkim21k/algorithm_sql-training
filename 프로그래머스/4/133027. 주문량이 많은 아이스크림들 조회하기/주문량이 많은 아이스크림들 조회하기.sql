/*
 1. FIRST_HALF : 상반기 주문 정보
 2. JULY : 7월 아이스크림 주문 정보
 3. 상위3개 : 7월 아이스크림 총 주문량 + 상반기 아이스크림 총 주문량
*/
-- 코드를 입력하세요
SELECT
    J.FLAVOR
FROM
    (
        SELECT FLAVOR, SUM(TOTAL_ORDER) AS TOTAL_ORDER
        FROM JULY
        GROUP BY FLAVOR
    ) AS J
RIGHT JOIN
    FIRST_HALF AS FH
    ON J.FLAVOR = FH.FLAVOR
GROUP BY
    J.FLAVOR
ORDER BY
    (SUM(FH.TOTAL_ORDER) + SUM(J.TOTAL_ORDER)) DESC
LIMIT 3;