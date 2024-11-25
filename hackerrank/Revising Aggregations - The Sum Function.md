# Revising Aggregations - The Sum Function

https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=false

### Problem

Query the total population of all cities in **CITY** where *District* is **California**.

**Input Format**

The **CITY** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg](https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg)

### Submissions

```sql
SELECT  SUM(POPULATION)
  FROM  CITY
 WHERE  DISTRICT = 'CALIFORNIA';
```