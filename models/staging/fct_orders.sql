{{ config(materialized='incremental', unique_key='order_id') }}

SELECT
    order_id,
    customer_id,
    order_date,
    amount,
    updated_at
FROM {{ ref('stg_orders') }}

{% if is_incremental() %}
WHERE updated_at > (SELECT MAX(updated_at) FROM {{ this }})
{% endif %}