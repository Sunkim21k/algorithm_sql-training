-- 코드를 작성해주세요
/*
 1. 각 세대별 자식이 없는 개체의 수, 세대
   - 재귀쿼리 사용
 2. 정렬 : 세대 오름차순
*/
WITH RECURSIVE Generation_list AS (
    SELECT
        ID,
        1 AS GENERATION
    FROM
        ECOLI_DATA
    WHERE
        PARENT_ID IS NULL
    
    UNION ALL
    
    -- 2세대부터
    SELECT
        E.ID,
        G.GENERATION + 1
    FROM
        ECOLI_DATA AS E
    INNER JOIN
        Generation_list AS G
        ON E.PARENT_ID = G.ID
)
SELECT 
    COUNT(G.ID) AS COUNT,
    G.GENERATION
FROM
    Generation_list AS G
LEFT JOIN
    ECOLI_DATA AS E
    ON G.ID = E.PARENT_ID
WHERE
    E.ID IS NULL
GROUP BY
    G.GENERATION
ORDER BY
    G.GENERATION ASC;