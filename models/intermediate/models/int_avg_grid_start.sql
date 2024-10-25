Select drivers.driver_id
	  ,CONCAT(forename, ' ', surname) as driver_name
	  ,nationality
	  ,avg(cast(grid as float)) as avg_grid_start
      ,count(results.driver_id) as number_of_races
FROM {{ ref('stg_raw__drivers') }} drivers
left join
{{ ref('stg_raw__results') }} results
on drivers.driver_id = results.driver_id
group by drivers.driver_id, nationality, forename, surname
having avg(cast(grid as float)) > 0
order by avg_grid_start asc