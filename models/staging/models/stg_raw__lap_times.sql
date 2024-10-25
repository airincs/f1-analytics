select
    driverid as driver_id,
    lap,
    milliseconds,
    position,
    raceid as race_id,
    time

from {{source('raw_data','raw_lap_times')}}