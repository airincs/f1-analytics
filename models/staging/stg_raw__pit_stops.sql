select
    driverid as driver_id,
    duration,
    lap,
    milliseconds,
    raceid as race_id,
    stop,
    time

from formula1.raw.raw_pit_stops