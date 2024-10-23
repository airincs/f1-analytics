select
    constructorid as constructor_id,
    constructorstandingsid as constructor_standings_id,
    cast(points as int) as points,
    position,
    raceid as  race_id,
    wins

from {{source('raw_data','raw_constructor_standings')}}