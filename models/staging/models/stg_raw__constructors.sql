select
    constructorid as constructor_id,
    constructorname as constructor_name,
    constructorref as constructor_ref,
    nationality

from {{source('raw_data','raw_constructors')}}