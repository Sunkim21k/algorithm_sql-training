/*
  1. 트럭의 대여 기록 별 대여 금액
  2. 대여 기록 ID(HISTORY_ID), 대여 금액 리스트
    2-1. 대여기간
    2-2. 대여기간 별 할인율
  3. 정렬 : 대여 금액 내림차순, 대여 기록 ID 내림차순
*/
-- 코드를 입력하세요

SELECT 
    A.HISTORY_ID
    ,ROUND(A.DAILY_FEE * A.RENT_DURATION * (100 - IFNULL(C.DISCOUNT_RATE, 0)) / 100) AS FEE
FROM
    (
        SELECT 
            A.CAR_TYPE
            ,B.HISTORY_ID
            ,A.DAILY_FEE
            ,DATEDIFF(B.END_DATE, B.START_DATE) + 1 AS RENT_DURATION
            ,(CASE 
                WHEN DATEDIFF(B.END_DATE, B.START_DATE) + 1 < 7 THEN '할인 안해줌'
                WHEN DATEDIFF(B.END_DATE, B.START_DATE) + 1 < 30 THEN '7일 이상'
                WHEN DATEDIFF(B.END_DATE, B.START_DATE) + 1 < 90 THEN '30일 이상'
                ELSE '90일 이상'
            END) AS DURAION_TYPE
        FROM 
            CAR_RENTAL_COMPANY_CAR AS A
        JOIN 
            CAR_RENTAL_COMPANY_RENTAL_HISTORY AS B
            ON A.CAR_ID = B.CAR_ID
        WHERE 
            A.CAR_TYPE = '트럭'
    ) AS A
LEFT JOIN 
    CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS C
    ON A.CAR_TYPE = C.CAR_TYPE
    AND A.DURAION_TYPE = C.DURATION_TYPE
ORDER BY 
    FEE DESC, 
    HISTORY_ID DESC;