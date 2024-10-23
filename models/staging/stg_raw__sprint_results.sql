select
    constructorid as constructor_id,
    driverid as driver_id,
    fastestlap as fastest_lap,
    fastestlaptime as fastest_lap_time,
    grid,
    laps,
    milliseconds,
    number,
    cast(points as int) as points,
    position,
    positionorder as position_order,
    raceid as race_id,
    resultid as result_id,
    statusid as status_id,
    time

from formula1.raw.raw_sprint_results