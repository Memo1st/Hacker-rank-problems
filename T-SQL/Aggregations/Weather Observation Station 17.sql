--Problem Statement
/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to

decimal places.

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

SELECT CAST ((LONG_W) AS DECIMAL(16,4))
FROM STATION
WHERE LAT_N =(SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780)
