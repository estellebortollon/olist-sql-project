with 

source as (

    select * from {{ source('raw', 'product_category_name_translation') }}

),

renamed as (

    select
        string_field_0 AS cat_portuguese,
        string_field_1 AS cat_english

    from source

)

select * from renamed