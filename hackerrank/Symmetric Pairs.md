# Symmetric Pairs

https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=false

### Problem

You are given a table, *Functions*, containing two columns: *X* and *Y*.

![https://s3.amazonaws.com/hr-challenge-images/12892/1443818798-51909e977d-1.png](https://s3.amazonaws.com/hr-challenge-images/12892/1443818798-51909e977d-1.png)

Two pairs *(X1, Y1)* and *(X2, Y2)* are said to be *symmetric* *pairs* if *X1 = Y2* and *X2 = Y1*.

Write a query to output all such *symmetric* *pairs* in ascending order by the value of *X*. List the rows such that *X1 ≤ Y1*.

**Sample Input**

![https://s3.amazonaws.com/hr-challenge-images/12892/1443818693-b384c24e35-2.png](https://s3.amazonaws.com/hr-challenge-images/12892/1443818693-b384c24e35-2.png)

**Sample Output**

```
20 20
20 21
22 23
```

### Submissions

```sql
/*
1. FIND SYMMETRIC PAIRS (X1 = Y2 AND X2 = Y1) : JOIN
2. WHERE X<=Y
3. ORDER BY X ASC
*/
  
SELECT  A.X
        ,A.Y
  FROM  FUNCTIONS A
        ,FUNCTIONS B
 WHERE  A.X = B.Y
   AND  A.Y = B.X
 GROUP
    BY  A.X
        ,A.Y
HAVING  A.X < A.Y
    OR  COUNT(A.X) > 1
 ORDER
    BY  A.X ASC;
```