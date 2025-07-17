# SELECT  DR_NAME
#         ,DR_ID
#         ,MCDP_CD
#         ,DATE_FORMAT(HIRE_YMD,'%Y-%m-%d')
#   FROM  DOCTOR
#  WHERE  MCDP_CD IN ('CS','GS')
#  ORDER
#     BY  HIRE_YMD DESC
#         ,DR_NAME ASC;

# WITH CHECK_DOCTOR AS (
#     SELECT
#         DR_NAME,
#         DR_ID,
#         MCDP_CD,
#         DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') AS HIRE_YMD
#     FROM
#         DOCTOR
#     WHERE
#         MCDP_CD IN ('CS','GS')
# )
# SELECT
#     *
# FROM
#     CHECK_DOCTOR
# ORDER BY
#     HIRE_YMD DESC,
#     DR_NAME ASC;

SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD,"%Y-%m-%d")
FROM
    DOCTOR
WHERE
    MCDP_CD IN ('CS','GS')
ORDER BY
    4 DESC,
    1 ASC;