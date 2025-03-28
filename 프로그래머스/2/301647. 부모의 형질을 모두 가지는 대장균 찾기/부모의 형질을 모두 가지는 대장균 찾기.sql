-- 코드를 작성해주세요
-- 부모의 형질을 모두 보유한 대장균의 ID, 대장균의 형질, 부모 대장균의 형질
SELECT
    A.ID,
    A.GENOTYPE,
    B.GENOTYPE AS PARENT_GENOTYPE
FROM 
    ECOLI_DATA A
INNER JOIN 
    ECOLI_DATA B ON A.PARENT_ID = B.ID
WHERE
    A.GENOTYPE & B.GENOTYPE = B.GENOTYPE
ORDER BY
    A.ID ASC;
