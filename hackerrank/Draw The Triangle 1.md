# Draw The Triangle 1

https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=false

### Problem

*P(R)* represents a pattern drawn by Julia in *R* rows. The following pattern represents *P(5)*:

```
* * * * *
* * * *
* * *
* *
*
```

Write a query to print the pattern *P(20)*.

### Submissions

```sql
WITH RECURSIVE pattern AS (
    SELECT 20 AS row_num
    UNION ALL
    SELECT row_num - 1 FROM pattern WHERE row_num > 1
)
SELECT repeat('* ', row_num) AS stars
  FROM pattern;
```