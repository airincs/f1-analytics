Select drivers.driver_id
	  ,CONCAT(forename, ' ', surname) as driver_name
	  ,nationality
	  ,sum(cast(points as float)) as total_points
FROM {{ ref('stg_raw__drivers') }} drivers
left join
{{ ref('stg_raw__results') }} results
on drivers.driver_id = results.driver_id
group by drivers.driver_id, nationality, forename, surname
order by total_points desc