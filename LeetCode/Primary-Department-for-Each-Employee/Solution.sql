# Write your MySQL query statement below

SELECT
    employee_id,
    department_id
FROM
    EMPLOYEE
WHERE
    primary_flag = 'Y'

UNION

SELECT
    employee_id,
    department_id
FROM
    EMPLOYEE
WHERE
    employee_id NOT IN (SELECT employee_id FROM EMPLOYEE WHERE primary_flag = 'Y')