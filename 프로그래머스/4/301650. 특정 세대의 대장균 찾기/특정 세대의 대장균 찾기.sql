-- 코드를 작성해주세요
SELECT
    ID
FROM
    ECOLI_DATA
WHERE
    PARENT_ID IN (
        SELECT
        ID
        FROM
            ECOLI_DATA
        WHERE
            PARENT_ID IN (
                SELECT
                    ID
                FROM
                    ECOLI_DATA
                WHERE
                    PARENT_ID IS NULL     
        )       
    )
ORDER BY
    ID ASC;


