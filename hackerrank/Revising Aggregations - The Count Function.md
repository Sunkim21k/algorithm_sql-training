# Revising Aggregations - The Count Function

https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=false

### Problem

Query a *count* of the number of cities in **CITY** having a *Population* larger than `100,000`.

**Input Format**

The **CITY** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg](https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg)

### Submissions

```sql
SELECT  COUNT(POPULATION)
  FROM  CITY
 WHERE  POPULATION > 100000;
```