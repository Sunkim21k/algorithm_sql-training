# Japanese Cities' Names

https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=false

### Problem

Query the names of all the Japanese cities in the **CITY** table. 

The **COUNTRYCODE** for Japan is JPN.

The **CITY** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg](https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg)

### Submissions

```sql
SELECT  NAME
  FROM  CITY
 WHERE  COUNTRYCODE = 'JPN';
```