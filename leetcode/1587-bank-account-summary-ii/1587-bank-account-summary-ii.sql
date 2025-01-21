# Write your MySQL query statement below
SELECT
    U.name,
    T.amount AS balance
FROM
    (
        SELECT
            account,
            SUM(amount) AS amount
        FROM
            Transactions
        GROUP BY
            account
        HAVING
            amount > 10000 
    ) AS T
INNER JOIN
    Users AS U
    ON T.account = U.account;
