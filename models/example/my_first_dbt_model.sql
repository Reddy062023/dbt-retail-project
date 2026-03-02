/*
    First dbt model: remove NULL ids so not_null test passes
    Materialization is set to table
*/

{{ config(materialized='table') }}

with source_data as (
    select 1 as id
    -- NULL values removed; do not include any null
)

select *
from source_data