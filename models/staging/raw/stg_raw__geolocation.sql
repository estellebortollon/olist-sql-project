with 

source as (

    select * from {{ source('raw', 'geolocation') }}

),

renamed as (

    select
        geolocation_zip_code_prefix,
        geolocation_lat AS latitude,
        geolocation_lng AS longitude,
        geolocation_city AS city,
        geolocation_state AS state

    from source

)

select * from renamed