select
    circuitid as circuit_id,
    date,
    raceid as race_id,
    racename as race_name,
    round,
    time,
    url,
    year

from {{source('raw_data','raw_races')}}