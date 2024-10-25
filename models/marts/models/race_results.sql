select c.constructor_name
       ,CONCAT(forename, ' ', surname) as driver_name
       ,r.points
       ,r.position
       ,r.fastest_lap
       ,s.status
       ,ra.race_name
       ,ra.date
       ,ra.year
from {{ ref('stg_raw__results') }} r
left join
{{ ref('stg_raw__constructors') }} c
on r.constructor_id = c.constructor_id
left join
{{ ref('stg_raw__drivers') }} d
on r.driver_id = d.driver_id
left join
{{ ref('stg_raw__status') }} s
on r.status_id = s.status_id
left join
{{ ref('stg_raw__races') }} ra
on r.race_id = ra.race_id