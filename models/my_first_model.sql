-- my_first_model.sql
WITH sample_data AS (
    SELECT 1 AS id, 'Alice' AS name
    UNION ALL
    SELECT 2 AS id, 'Bob' AS name
    UNION ALL
    SELECT 3 AS id, 'Charlie' AS name
)
SELECT *
FROM sample_data