--1. Write a FULL OUTER JOIN to show all drivers and all cars in one result set
SELECT *
FROM drivers d
FULL OUTER JOIN cars c ON car_id = c.id;


--2. From the full-outer result, find only the unmatched rows on EITHER side — drivers with no car AND cars with no driver — add a WHERE clause
SELECT 
	d.id,
	d.name,
	c.model,
	c.price
FROM drivers d
FULL OUTER JOIN cars c on car_id = c.id
WHERE c.id is NULL or d.id is NULL
;

--3. Use COALESCE to replace NULL car prices with 0 for drivers who have no car assigned
SELECT 
	d.id,
	coalesce(d.name, 'No Driver') as name,
	c.model,
	coalesce(c.price, 0) as price
FROM drivers d
FULL OUTER JOIN cars c on car_id = c.id
;


--4. Which single join type lets you find drivers WITHOUT a car AND cars WITHOUT a driver in one query?
-------------answer-------------
--only the outer fuller join lets you see all none filled cells.
--both the left/RIGHT and INNER joins filters the cells that are'nt filled.
  
SELECT 
	d.id,
	coalesce(d.name, 'No Driver') as name,
	c.model,
	coalesce(c.price, 0) as price
FROM drivers d
FULL OUTER JOIN cars c on car_id = c.id
;
