-- 코드를 입력하세요
# SELECT  BOARD_ID
#         ,WRITER_ID
#         ,TITLE
#         ,PRICE
#         ,CASE
#             WHEN STATUS = 'DONE' THEN '거래완료'
#             WHEN STATUS = 'SALE' THEN '판매중'
#             WHEN STATUS = 'RESERVED' THEN '예약중'
#         END STATUS
#   FROM  USED_GOODS_BOARD
#  WHERE  CREATED_DATE IN ('2022-10-05%')
#  ORDER
#     BY  BOARD_ID DESC;


SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    CASE
        WHEN STATUS = 'DONE' THEN '거래완료'
        WHEN STATUS = 'SALE' THEN '판매중'
        ELSE '예약중'
    END
FROM
    USED_GOODS_BOARD
WHERE
    CREATED_DATE LIKE ('2022-10-05')
ORDER BY
    1 DESC;