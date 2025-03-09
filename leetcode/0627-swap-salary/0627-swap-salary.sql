# Write your MySQL query statement below
-- UPDATE 
--     Salary
-- SET
--     sex = CASE sex
--             WHEN 'm' THEN 'f'
--             WHEN 'f' THEN 'm'
--     END;

UPDATE 
    SALARY 
SET 
    sex = IF(sex='m','f','m')
