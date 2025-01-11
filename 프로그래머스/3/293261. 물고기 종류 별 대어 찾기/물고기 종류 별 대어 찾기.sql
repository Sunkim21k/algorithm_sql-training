-- 코드를 작성해주세요
WITH MAX_LENGTH_FISH AS (
    SELECT
        FI.FISH_TYPE,
        MAX(FI.LENGTH) AS MAX_LENGTH
    FROM
        FISH_INFO AS FI
    GROUP BY
        FI.FISH_TYPE
)

SELECT 
    FI.ID,
    FNI.FISH_NAME,
    FI.LENGTH
FROM
    FISH_INFO AS FI
JOIN
    MAX_LENGTH_FISH AS MLF
    ON FI.FISH_TYPE = MLF.FISH_TYPE AND FI.LENGTH = MLF.MAX_LENGTH
JOIN
    FISH_NAME_INFO AS FNI
    ON FI.FISH_TYPE = FNI.FISH_TYPE
ORDER BY
    FI.ID ASC;