# Write your MySQL query statement below
/*
  1. 각 부서별 상위 3 급여에 속하는 직원 찾기
*/
WITH FIND_TOP3_EMPLOYEE AS (
    SELECT
        D.NAME AS Department,
        E.NAME AS Employee,
        E.Salary,
        DENSE_RANK() OVER(PARTITION BY D.NAME ORDER BY E.SALARY DESC) AS RN
    FROM
        EMPLOYEE AS E
    INNER JOIN
        DEPARTMENT AS D
        ON E.DEPARTMENTID = D.ID
)
SELECT
    Department,
    Employee,
    Salary
FROM
    FIND_TOP3_EMPLOYEE
WHERE
    RN BETWEEN 1 AND 3;