select
    constructorid as constructor_id,
    driverid as driver_id,
    number,
    position,
    q1 as qualifying_1,
    q2 as qualifying_2,
    q3 as qualifying_3,
    qualifyid as qualify_id,
    raceid as race_id

from formula1.raw.raw_qualifying
