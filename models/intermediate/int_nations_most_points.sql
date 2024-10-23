Select nationality
	  ,sum(cast(points as float)) as total_points
FROM {{ ref('stg_raw__drivers') }} drivers
left join
{{ ref('stg_raw__results') }} results
on drivers.driver_id = results.driver_id
group by nationality
order by total_points desc