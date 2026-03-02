SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    updated_at
FROM {{ source('raw','customers_raw') }}