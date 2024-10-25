select
    driverid as driver_id,
    duration,
    lap,
    milliseconds,
    raceid as race_id,
    stop,
    time

from {{source('raw_data','raw_pit_stops')}}