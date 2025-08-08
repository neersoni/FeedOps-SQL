CREATE TABLE feed_name_comparison AS
SELECT
    f1.id AS row_id,  -- assuming 'id' is your row identifier
    f1.name AS feed1_name,
    f2.name AS feed2_name,
    f3.name AS feed3_name,
    CASE
        WHEN f1.name = f2.name THEN 'Match_Feed2'
        ELSE 'Mismatch_Feed2'
    END AS feed2_compare,
    CASE
        WHEN f1.name = f3.name THEN 'Match_Feed3'
        ELSE 'Mismatch_Feed3'
    END AS feed3_compare
FROM feed_1 f1
LEFT JOIN feed_2 f2 ON f1.id = f2.id
LEFT JOIN feed_3 f3 ON f1.id = f3.id;

select * from feed_name_comparison