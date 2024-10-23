select
    constructorresultsid as constructor_results_id,
    raceid as race_id,
    constructorid as constructor_id,
    cast(points as int) as points

from formula1.raw.raw_constructor_results