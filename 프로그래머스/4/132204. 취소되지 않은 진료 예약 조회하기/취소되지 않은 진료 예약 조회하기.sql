/*
 1. 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역 조회
   1-1. APNT_YMD >= 2022-04-13
   1-2. MCDP_CD = CS
   1-3. APNT_CNCL_YN = 'N'
 2. 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시
 3. 정렬 : 진료예약일시
*/
-- 코드를 입력하세요
SELECT
    AP.APNT_NO,
    P.PT_NAME,
    P.PT_NO,
    AP.MCDP_CD,
    D.DR_NAME,
    AP.APNT_YMD
FROM
    APPOINTMENT AS AP
INNER JOIN
    PATIENT AS P
    ON AP.PT_NO = P.PT_NO
INNER JOIN
    DOCTOR AS D
    ON AP.MDDR_ID = D.DR_ID
WHERE
    DATE_FORMAT(AP.APNT_YMD,'%Y-%m-%d') = '2022-04-13'
    AND AP.MCDP_CD = 'CS'
    AND ((AP.APNT_CNCL_YN = 'N')
    OR (AP.APNT_CNCL_YMD >= '2022-04-13'))
ORDER BY
    AP.APNT_YMD ASC;
