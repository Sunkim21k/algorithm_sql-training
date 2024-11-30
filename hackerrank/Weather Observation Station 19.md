# Weather Observation Station 19

https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=false

### Problem

Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of *Northern Latitude* (*LAT_N*) and (c,d) are the respective minimum and maximum values of *Western Longitude* (*LONG_W*) in **STATION**.

Query the [Euclidean Distance](https://en.wikipedia.org/wiki/Euclidean_distance) between points P1 and P2 and *format your answer* to display 4 decimal digits.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
SELECT  ROUND(
        SQRT(
            POWER(
                MAX(LAT_N) - MIN(LAT_N),2)
            + POWER(
                MAX(LONG_W) - MIN(LONG_W),2)
            )
        ,4)
  FROM  STATION;
```