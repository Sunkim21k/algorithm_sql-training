# Write your MySQL query statement below
WITH salary_rank AS (
    SELECT
        D.name AS Department,
        E.name AS Employee,
        E.salary,
        RANK() OVER(PARTITION BY D.id ORDER BY E.salary DESC) AS rn
    FROM
        EMPLOYEE AS E
    INNER JOIN
        DEPARTMENT AS D
        ON E.departmentId = D.id
)
SELECT
    *
FROM
    (
        SELECT
            Department,
            Employee,
            salary
        FROM
            salary_rank
        WHERE
            rn = 1
    ) AS salary_rank_list;