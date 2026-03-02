SELECT
    order_id,
    customer_id,
    order_date,
    amount,
    status,
    updated_at
FROM {{ source('raw','orders_raw') }}
WHERE status = 'completed'