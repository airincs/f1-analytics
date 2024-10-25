select
    url,
    year

from {{source('raw_data','raw_seasons')}}