# Placements

https://www.hackerrank.com/challenges/placements/problem?isFullScreen=false

### Problem

You are given three tables: *Students*, *Friends* and *Packages.* *Students* contains two columns: *ID* and *Name*. *Friends* contains two columns: *ID* and *Friend_ID* (*ID* of the ONLY best friend). *Packages* contains two columns: *ID* and *Salary* (offered salary in $ thousands per month).

![https://s3.amazonaws.com/hr-challenge-images/12895/1443820186-2a9b4939a8-1.png](https://s3.amazonaws.com/hr-challenge-images/12895/1443820186-2a9b4939a8-1.png)

Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

**Sample Input**

![https://s3.amazonaws.com/hr-challenge-images/12895/1443820079-9bd1e231b1-2_1.png](https://s3.amazonaws.com/hr-challenge-images/12895/1443820079-9bd1e231b1-2_1.png)

![https://s3.amazonaws.com/hr-challenge-images/12895/1443820100-adb691b2f5-2_2.png](https://s3.amazonaws.com/hr-challenge-images/12895/1443820100-adb691b2f5-2_2.png)

**Sample Output**

```
Samantha
Julia
Scarlet

```

**Explanation**

See the following table:

![https://s3.amazonaws.com/hr-challenge-images/12895/1443819966-c37c146d27-3.png](https://s3.amazonaws.com/hr-challenge-images/12895/1443819966-c37c146d27-3.png)

Now,

- *Samantha's* best friend got offered a higher salary than her at 11.55
- *Julia's* best friend got offered a higher salary than her at 12.12
- *Scarlet's* best friend got offered a higher salary than her at 15.2
- *Ashley's* best friend did NOT get offered a higher salary than her

The name output, when ordered by the salary offered to their friends, will be:

- *Samantha*
- *Julia*
- *Scarlet*

### Submissions

```sql
/*
1. JOIN  STUDENTS + PACKAGES (ID) P1 : NAME SALARY
2. JOIN  STUDENTS + FRIENDS (ID) : LOOKING BEST FRIEND
3. JOIN  FRIENDS + PACKAGES (FRIEND ID) P2 : FRIEND SALARY
4. WHERE  P2.SALARY > P1.SALARY
5. ORDER BY P2.SALARY
*/

SELECT  Students.Name
  FROM  Students 
 INNER
  JOIN  Packages P1
    ON  Students.ID = P1.ID
 INNER
  JOIN  Friends
    ON  Students.ID = Friends.ID
 INNER
  JOIN  Packages P2
    ON  Friends.Friend_ID = P2.ID
 WHERE  P2.Salary > P1.Salary
 ORDER
    BY  P2.Salary;
```