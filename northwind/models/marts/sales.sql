{{
    config(
        materialized='incremental'
    )}}

with sales as (
    select * from {{ref('staging_seeds__nova_tabela')}}
)
select * from sales

{% if is_incremental() %}
where updated_at > (select max(updated_at) from {{ this }})
{% endif %}
