# Write your MySQL query statement below
SELECT
    x, y, z,
    CASE
        WHEN X + Y <= Z OR Y + Z <= X OR X + Z <= Y THEN 'No'
        ELSE 'Yes'
    END triangle
FROM
    TRIANGLE;
