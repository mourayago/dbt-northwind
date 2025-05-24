with renamed as (
    select 
    nome as name,
    categoria as category,
    descricao as description,
    preco as price,
    ativo as active
    from {{ref('raw_seeds__nova_tabela')}}
)
select * from renamed       
