select
    circuitid as circuit_id,
    circuitref as circuit_ref,
    circuitname as circuit_name,
    location,
    country,
    latitude,
    longitude

from {{source('raw_data','raw_circuits')}}