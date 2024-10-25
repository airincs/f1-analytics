Select drivers.driver_id
	  ,CONCAT(forename, ' ', surname) as driver_name
	  ,nationality
	  ,avg(cast(grid as float) - cast(position_order as float)) as avg_position_change
FROM {{ ref('stg_raw__drivers') }} drivers
left join
{{ ref('stg_raw__results') }} results
on drivers.driver_id = results.driver_id
group by drivers.driver_id, nationality, forename, surname
order by avg_position_change desc