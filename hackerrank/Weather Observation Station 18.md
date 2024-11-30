# Weather Observation Station 18

https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=false

### Problem

Consider  P1(a,b) and P2(c,d) to be two points on a *2D* plane.

- a happens to equal the minimum value in *Northern Latitude* (*LAT_N* in **STATION**).
- b happens to equal the minimum value in *Western Longitude* (*LONG_W* in **STATION**).
- c happens to equal the maximum value in *Northern Latitude* (*LAT_N* in **STATION**).
- d happens to equal the maximum value in *Western Longitude* (*LONG_W* in **STATION**).

Query the [Manhattan Distance](https://xlinux.nist.gov/dads/HTML/manhattanDistance.html) between points P1 and P2 and round it to a scale of  decimal places.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
SELECT  ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)),4)
  FROM  STATION;
```