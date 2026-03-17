with 

source as (

    select * from {{ source('raw', 'reviews') }}

),

renamed as (

    select
        review_id,
        order_id,
        review_score,
        CAST(review_creation_date AS DATE),
        review_answer_timestamp

    from source

)

select * from renamed