select
    driverid as driver_id,
    lap,
    milliseconds,
    position,
    raceid as race_id,
    time

from formula1.raw.raw_lap_times