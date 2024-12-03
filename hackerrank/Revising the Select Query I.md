# Revising the Select Query I

https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=false

### Problem

Query all columns for all American cities in the **CITY** table with populations larger than `100000`. The **CountryCode** for America is `USA`.

The **CITY** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg](https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg)

### Submissions

```sql
SELECT  *
  FROM  CITY
 WHERE  POPULATION > 100000
   AND  COUNTRYCODE = 'USA';
```