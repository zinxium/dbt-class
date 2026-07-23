with 

source as (

    select * from {{ source('jaffle_shop', 'products') }}

),

renamed as (
    select
         id as product_id,
         name as product_name,
         type,
         price,
         description
    from source

)

select * from renamed