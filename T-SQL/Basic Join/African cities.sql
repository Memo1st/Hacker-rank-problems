/*
problem :
Given the CITY and COUNTRY tables, query the names of all cities 
where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
Input Format
The CITY and COUNTRY tables are described as follows: 

City
+-------------+-------------+
| Field       | Type        |
+-------------+-------------+
| ID          | Number      |
| Name        | varchar2(17)|
| CountryCode | varchar2(3) |
| District    | varchar2(20)|
| Population  | Number      |
+-------------+-------------+
Country
+----------------+-------------+
| Field          | Type        |
+----------------+-------------+
| Code           | varchar2(3) |
| Name           | varchar2(44)|
| Continent      | varchar2(13)|
| Region         | varchar2(25)|
| SurfaceArea    | number      |
| IndepYear      | varchar2(5) |
| Population     | Number      |
| LifeExpectancy | varchar2(4) |
| GNP            | Number      |
| GNPOld         | varchar2(9) |
| LocalName      | varchar2(44)|
| GovernmentForm | varchar2(44)|
| HeadOfState    | varchar2(32)|
| Capital        | varchar2(4) |
| Code2          | varchar2(2) |
+----------------+-------------+

Solution:
*/

select c.name
from city as c
inner join country as t
on c.countrycode = t.code 
where t.continent ='africa'
