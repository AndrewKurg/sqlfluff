SELECT * FROM test1
SETTINGS allow_experimental_window_functions = 1;

SELECT * FROM test1
WHERE a = ''
SETTINGS allow_experimental_window_functions = 1;

SELECT * FROM test1
ORDER BY 2
SETTINGS allow_experimental_window_functions = 1;

SELECT
    field_1,
    field_2
FROM
    test.test_table_1
SETTINGS
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
