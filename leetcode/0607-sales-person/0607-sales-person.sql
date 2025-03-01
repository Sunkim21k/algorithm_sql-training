# Write your MySQL query statement below
SELECT
    name
FROM
    SalesPerson
WHERE
    sales_id NOT IN (
        SELECT
            O.sales_id
        FROM
            Orders AS O
        INNER JOIN
            Company AS C
            ON O.com_id = C.com_id
        WHERE
            C.name = 'RED'
    );

