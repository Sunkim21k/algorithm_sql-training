/*
 1. 아이템의 희귀도가 'RARE'인 아이템들의 모든 다음 업그레이드 아이템 찾기
*/
WITH RARE_ITEM_LIST AS (
    SELECT
        ITEM_ID
    FROM
        ITEM_INFO
    WHERE
        RARITY = 'RARE'
), RARE_UPGRADE_ITEM_LIST AS (
    SELECT
        IT.ITEM_ID
    FROM
        ITEM_TREE AS IT
    INNER JOIN
        RARE_ITEM_LIST AS RIL
        ON IT.PARENT_ITEM_ID = RIL.ITEM_ID
)
SELECT
    ITEM_ID,
    ITEM_NAME,
    RARITY
FROM
    ITEM_INFO
WHERE
    ITEM_ID IN (
        SELECT
            ITEM_ID
        FROM
            RARE_UPGRADE_ITEM_LIST
    )
ORDER BY
    ITEM_ID DESC;