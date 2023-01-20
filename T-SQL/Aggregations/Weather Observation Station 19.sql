--Problem Statement
/*
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and
(c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
Euclidean Distance def: https://en.wikipedia.org/wiki/Euclidean_distance

Input Format

The STATION table is described as follows:
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
where LAT_N is the northern latitude and LONG_W is the western longitude. 
*/
--Solution


SELECT CAST(SQRT( POWER(MAX(LAT_N)  - MIN(LAT_N),  2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)) AS DECIMAL (16,4))
FROM STATION;
