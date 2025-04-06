/*
 1. 사원별 성과금 정보 조회(EMP_NO, EMP_NAME, GRADE, BONUS)
 2. 정렬 : 사번 기준 EMP_NO
*/
-- 코드를 작성해주세요
# SELECT
#     HE.EMP_NO,
#     HE.EMP_NAME,
#     (CASE
#         WHEN HG.SCORE >= 96 THEN 'S'
#         WHEN HG.SCORE >= 90 THEN 'A'
#         WHEN HG.SCORE >= 80 THEN 'B'
#         ELSE 'C'
#     END) AS GRADE,
#         (CASE
#         WHEN HG.SCORE >= 96 THEN HE.SAL * 0.2
#         WHEN HG.SCORE >= 90 THEN HE.SAL * 0.15
#         WHEN HG.SCORE >= 80 THEN HE.SAL * 0.1
#         ELSE HE.SAL * 0
#     END) AS BONUS
# FROM
#     (
#         SELECT EMP_NO, AVG(SCORE) AS SCORE 
#         FROM HR_GRADE
#         GROUP BY EMP_NO
#     ) AS HG
# INNER JOIN
#     HR_EMPLOYEES AS HE
#     ON HG.EMP_NO = HE.EMP_NO
# ORDER BY
#     HE.EMP_NO ASC;

WITH GRADE_LIST AS (
    SELECT
        EMP_NO,
        CASE
        WHEN AVG(SCORE) >= 96 THEN 'S'
        WHEN AVG(SCORE) >= 90 THEN 'A'
        WHEN AVG(SCORE) >= 80 THEN 'B'
        ELSE 'C'
        END GRADE
    FROM
        HR_GRADE
    GROUP BY
        EMP_NO
)
SELECT
    HE.EMP_NO,
    HE.EMP_NAME,
    GL.GRADE,
    CASE
        WHEN GRADE = 'S' THEN SAL * 0.2
        WHEN GRADE = 'A' THEN SAL * 0.15
        WHEN GRADE = 'B' THEN SAL * 0.1
        ELSE SAL * 0
    END BONUS
FROM
    HR_EMPLOYEES AS HE
INNER JOIN
    GRADE_LIST AS GL
    ON HE.EMP_NO = GL.EMP_NO