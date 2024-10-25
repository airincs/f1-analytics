select
    driverid as driver_id,
    driverstandingsid as driver_standings_id,
    cast(points as int) as points,
    position,
    raceid as race_id,
    wins

from {{source('raw_data','raw_driver_standings')}}