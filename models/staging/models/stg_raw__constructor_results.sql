select
    constructorresultsid as constructor_results_id,
    raceid as race_id,
    constructorid as constructor_id,
    cast(points as int) as points

from {{source('raw_data','raw_constructor_results')}}