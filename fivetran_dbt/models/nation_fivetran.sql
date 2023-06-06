{{ config(materialized='table') }}

with nation_info as (
    select 
    *
    from {{ source('ORACLE_RDS', 'NATION') }}
),
final as (
    select * from nation_info
)

select * from final