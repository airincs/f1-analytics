select
    constructorid as constructor_id,
    constructorstandingsid as constructor_standings_id,
    cast(points as int) as points,
    position,
    raceid as  race_id,
    wins

from formula1.raw.raw_constructor_standings