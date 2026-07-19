SELECT 'string' REGEXP '[a-zAZ]';

SELECT
CASE
    WHEN field = 0 THEN 'false'
    ELSE 'true'
END
FROM (
   SELECT CAST(('string' REGEXP '[0-9]') AS String) REGEXP '[069]' AS field
) AS foo;

SELECT name
FROM system.columns
WHERE database REGEXP '^def.*$';
