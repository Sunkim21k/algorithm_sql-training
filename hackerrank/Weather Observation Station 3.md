# Weather Observation Station 3

https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=false

### Problem

Query a list of **CITY** names from **STATION** for cities that have an even **ID** number. Print the results in any order, but exclude duplicates from the answer.

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where **LAT_N** is the northern latitude and **LONG_W** is the western longitude.

### Submissions

```sql
/*
1. SELECT CITY FROM STATION
2. WHERE ID % 2 = 0
3. EXCLUDE DUPLICATES CITY
*/

SELECT  DISTINCT CITY
  FROM  STATION
 WHERE  ID % 2 = 0;
```