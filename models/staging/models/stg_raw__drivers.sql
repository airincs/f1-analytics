select
    code,
    dob as date_of_birth,
    driverid as driver_id,
    driverref as driver_ref,
    forename,
    nationality,
    number as driver_number,
    surname,
    url

from {{source('raw_data','raw_drivers')}}