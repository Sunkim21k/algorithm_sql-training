# Write your MySQL query statement below
SELECT
    id,
    CASE
        WHEN p_id is NULL THEN 'Root'
        WHEN id IN (SELECT p_id FROM Tree) THEN 'Inner'
        ELSE 'Leaf'
    END AS Type
FROM
    TREE
