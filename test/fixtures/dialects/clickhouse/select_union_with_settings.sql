SELECT * FROM test1
UNION ALL
SELECT * FROM test2
SETTINGS allow_experimental_window_functions = 1;

SELECT * FROM test1
UNION ALL
SELECT * FROM test2
UNION ALL
SELECT * FROM test3
SETTINGS max_threads = 4, allow_experimental_window_functions = 1;

-- FORMAT after UNION ALL
SELECT * FROM test1
UNION ALL
SELECT * FROM test2
FORMAT CSV;

-- INTO OUTFILE after UNION ALL
SELECT * FROM test1
UNION ALL
SELECT * FROM test2
INTO OUTFILE 'output.csv' FORMAT CSV;

SELECT 1
UNION ALL
SELECT 2
SETTINGS max_threads = 1
INTO OUTFILE 'output.csv';

SELECT
    field_1,
    field_2
FROM
    test.test_table_1                                                                                                 SETTINGS
allow_experimental_analyzer = 1
UNION DISTINCT
SELECT
    field_1,
    field_2
FROM
    test.test_table_1
SETTINGS
allow_experimental_analyzer = 1;

SELECT now()
SETTINGS
allow_experimental_analyzer = 1
UNION ALL
SELECT now();

SELECT
    field_1,
    field_2
FROM
    test.test_table_1
ORDER BY
    1
SETTINGS
allow_experimental_analyzer = 1
UNION DISTINCT
SELECT
    field_1,
    field_2
FROM
    test.test_table_1
ORDER BY
    2
SETTINGS
allow_experimental_analyzer = 1;

SELECT now()
UNION ALL
SELECT now()
SETTINGS
allow_experimental_analyzer = 1;

SELECT now()
FROM
    system.one
UNION DISTINCT
SELECT now()
SETTINGS
allow_experimental_analyzer = 1;

SELECT
    field_1,
    field_2
FROM
    test.test_table_1
WHERE
    field_2 IS NOT NULL
ORDER BY
    field_2 DESC
SETTINGS
allow_experimental_analyzer = 1
UNION DISTINCT
SELECT
    field_1,
    SUM(field_2) AS field_2
FROM
    test.test_table_1
GROUP BY
    field_1
HAVING
    field_2 > 100
SETTINGS
allow_experimental_analyzer = 1;

SELECT
    field_1,
    field_2
FROM
    test.test_table_1
UNION ALL
SELECT
    field_1,
    field_2
FROM
    test.test_table_2
UNION DISTINCT
SELECT
    field_1,
    field_2
FROM
    test.test_table_3
SETTINGS
join_use_null = 1;
