/*
 - 중성화O : Spayed, Neutered
 - 중성화X : Intact
*/
-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    ANIMAL_TYPE,
    NAME
FROM
    ANIMAL_INS
WHERE
    SEX_UPON_INTAKE LIKE ('%Intact%')
    AND ANIMAL_ID IN (
        SELECT ANIMAL_ID
        FROM ANIMAL_OUTS
        WHERE SEX_UPON_OUTCOME NOT LIKE ('%Intact%')
    )
ORDER BY
    ANIMAL_ID ASC;