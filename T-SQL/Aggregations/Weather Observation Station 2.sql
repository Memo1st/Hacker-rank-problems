-- problem 
/*
Query the following two values from the STATION table:

    The sum of all values in LAT_N rounded to a scale of 

decimal places.
The sum of all values in LONG_W rounded to a scale of

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

Output Format

Your results must be in the form:
+-----------+
| lat lon   |
+-----------+
where lat is the sum of all values in LAT_N and lon is the sum of all values in LONG_W. Both 2 results must be rounded to a scale of decimal places.
*/
-- solution

SELECT CAST (sum(lat_n) as decimal (16,2)) as lat, CAST (sum(long_w) as decimal (16,2)) as lon 
FROM station 
