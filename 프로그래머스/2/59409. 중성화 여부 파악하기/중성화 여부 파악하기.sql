-- 코드를 입력하세요
# SELECT  ANIMAL_ID
#         ,NAME
#         ,CASE
#           WHEN SEX_UPON_INTAKE LIKE '%NEUTERED%' THEN 'O'
#           WHEN SEX_UPON_INTAKE LIKE '%SPAYED%' THEN 'O'
#           ELSE 'X'
#         END AS '중성화'
#   FROM  ANIMAL_INS;

SELECT
    ANIMAL_ID,
    NAME,
    CASE
        WHEN SEX_UPON_INTAKE LIKE '%Neutered%' THEN 'O'
        WHEN SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
        ELSE 'X'
    END AS '중성화'
FROM
    ANIMAL_INS;
