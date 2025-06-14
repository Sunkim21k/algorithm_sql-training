-- 코드를 작성해주세요
# SELECT  COUNT(*) AS FISH_COUNT
#   FROM  FISH_INFO AS INFO
#   LEFT
#   JOIN  FISH_NAME_INFO AS NAME
#     ON  INFO.FISH_TYPE = NAME.FISH_TYPE
#  WHERE  NAME.FISH_NAME IN ('BASS', 'SNAPPER');

SELECT
    COUNT(*) AS FISH_COUNT
FROM   
    FISH_INFO
WHERE
    FISH_TYPE IN (SELECT 
                    FISH_TYPE 
                  FROM 
                    FISH_NAME_INFO 
                  WHERE 
                    FISH_NAME IN ('BASS', 'SNAPPER'))