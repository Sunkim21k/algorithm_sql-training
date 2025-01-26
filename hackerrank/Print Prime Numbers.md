# Print Prime Numbers

https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=false

### Problem

Write a query to print all *prime numbers* less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers ≤10 would be:

```
2&3&5&7
```

### Submissions

```sql
/*
1. check prime numbers : CTE
1-1. n >= 2
1-2. n % (n between root n ~ n) != 0 
2. single line : group_concat
*/

WITH RECURSIVE numbers AS (
    SELECT 
        2 AS num
    UNION ALL
    SELECT 
        num + 1
    FROM 
        numbers
    WHERE 
        num < 1000
),
prime_numbers AS (
    SELECT
        n.num
    FROM
        numbers AS n
    WHERE NOT EXISTS (
        SELECT
            1
        FROM
            numbers AS d
        WHERE
            d.num > 1
            AND d.num < n.num
            AND n.num % d.num = 0
    )
)

SELECT
    GROUP_CONCAT(num SEPARATOR '&') AS primes
FROM
    prime_numbers;
```
