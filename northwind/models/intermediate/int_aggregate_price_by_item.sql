with int_aggregate_price_by_item as (
    select 
    name,
    sum(price) as total_price
    from {{ref("staging_seeds__nova_tabela")}}
    group by name
    )
select * from int_aggregate_price_by_item