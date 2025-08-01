-- 코드를 입력하세요
# SELECT  FLAVOR
#   FROM  FIRST_HALF
#  ORDER
#     BY  TOTAL_ORDER DESC
#         ,SHIPMENT_ID ASC;

# SELECT
#     *
# FROM
#     (
#         SELECT
#             FLAVOR
#         FROM
#             FIRST_HALF
#         ORDER BY
#             TOTAL_ORDER DESC,
#             SHIPMENT_ID ASC
#     ) T1

SELECT
    FLAVOR
FROM
    FIRST_HALF
ORDER BY
    TOTAL_ORDER DESC,
    SHIPMENT_ID ASC;