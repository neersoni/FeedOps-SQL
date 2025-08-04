----- Query to delete duplicates

DELETE FROM feed_1
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_1
    GROUP BY name, email
);

select * from feed_1

------------------------------------------------------------------------------
DELETE FROM feed_2
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_2
    GROUP BY name, email
);

select * from feed_2
 --------------------------------------------------------------------------------

DELETE FROM feed_3
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_2
    GROUP BY name, email
);

select * from feed_3

