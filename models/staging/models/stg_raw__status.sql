select
    status,
    statusid as status_id

from {{source('raw_data','raw_status')}}