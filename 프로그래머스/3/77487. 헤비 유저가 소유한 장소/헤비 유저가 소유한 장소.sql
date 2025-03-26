-- 코드를 입력하세요
# SELECT
#     *
# FROM
#     PLACES
# WHERE
#     HOST_ID IN (
#         SELECT HOST_ID
#         FROM PLACES
#         GROUP BY HOST_ID
#         HAVING COUNT(HOST_ID) >= 2
#     )
# ORDER BY
#     ID ASC;


WITH CHECK_HEAVY_HOST AS 
(
    SELECT
        HOST_ID
    FROM
        PLACES
    GROUP BY
        HOST_ID
    HAVING
        COUNT(*) >= 2
)

SELECT
    ID,
    NAME,
    HOST_ID
FROM
    PLACES
WHERE
    HOST_ID IN (SELECT HOST_ID FROM CHECK_HEAVY_HOST)
ORDER BY
    ID ASC;