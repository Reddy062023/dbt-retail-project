{% snapshot customers_snapshot %}

{{ config(
    target_schema='DBT_DEV',
    unique_key='customer_id',
    strategy='timestamp',
    updated_at='updated_at'
) }}

SELECT *
FROM {{ source('raw', 'customers_raw') }}

{% endsnapshot %}