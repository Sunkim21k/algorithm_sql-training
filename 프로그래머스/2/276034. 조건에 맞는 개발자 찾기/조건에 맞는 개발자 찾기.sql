-- 코드를 작성해주세요
SELECT 
    D.ID,
    D.EMAIL,
    D.FIRST_NAME,
    D.LAST_NAME
FROM 
    DEVELOPERS AS D
WHERE
    EXISTS (
        SELECT 1
        FROM SKILLCODES S
        WHERE
            S.NAME IN ('Python', 'C#')
            AND (D.SKILL_CODE & S.CODE != 0)
    )
ORDER BY
    D.ID ASC;