# Weather Observation Station 20

https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=false

### Problem

A [*median*](https://en.wikipedia.org/wiki/Median) is defined as a number separating the higher half of a data set from the lower half. Query the *median* of the *Northern Latitudes* (*LAT_N*) from **STATION** and round your answer to 4 decimal places.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
/*
ODD MEDIAN : (TOTAL_COUNT + 1)/2 ROW
EVEN MEDIAN : AVG ((TOTAL_COUNT + 1)/2 ROW + (TOTAL_COUNT + 2)/2 ROW)
*/

SELECT  ROUND(LAT_N,4)
  FROM  STATION
 ORDER
    BY  LAT_N
 LIMIT  249, 1;
```