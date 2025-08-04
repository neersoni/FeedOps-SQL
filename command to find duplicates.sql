
commands to find out duplicates in feed 1 , 2 , 3 
-------------------------------------------------------------------------
SELECT "name" COUNT(*) AS duplicates
FROM feed_1
GROUP BY name 
HAVING COUNT(*) > 1;

SELECT email COUNT(*) AS duplicates
FROM feed_1
GROUP BY email
HAVING COUNT(*) > 1;

SELECT  joining_date  COUNT(*) AS duplicates
FROM feed_1
GROUP BY joining_date
HAVING COUNT(*) > 1;
-----------------------------------------------------------------------------

SELECT department , COUNT(*) AS duplicates
FROM feed_2
GROUP BY department 
HAVING COUNT(*) > 1;

SELECT designation , COUNT(*) AS duplicates
FROM feed_2
GROUP BY designation
HAVING COUNT(*) > 1;

SELECT name, COUNT(*) AS duplicates
FROM feed_2
GROUP BY name 
HAVING COUNT(*) > 1;

-------------------------------------------------------------------------------

SELECT salary, COUNT(*) AS duplicates
FROM feed_3
GROUP BY salary 
HAVING COUNT(*) > 1;

SELECT status, COUNT(*) AS duplicates
FROM feed_3
GROUP BY status
HAVING COUNT(*) > 1;

SELECT city, COUNT(*) AS duplicates
FROM feed_3
GROUP BY city 
HAVING COUNT(*) > 1;

SELECT country, COUNT(*) AS duplicates
FROM feed_3
GROUP BY country
HAVING COUNT(*) > 1;


SELECT "name", COUNT(*) AS duplicates
FROM feed_3
GROUP BY name
HAVING COUNT(*) > 1;

