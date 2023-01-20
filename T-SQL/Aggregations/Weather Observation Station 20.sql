--Problem Statement
/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) 
from STATION and round your answer to 4decimal places.

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


Select cast ((S.LAT_N) as decimal (16,4)) 
from station AS S 
where
(select count(Lat_N) from station where Lat_N < S.LAT_N ) = 
(select count(Lat_N) from station where Lat_N > S.LAT_N);
