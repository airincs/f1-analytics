Select drivers.driver_id
	  ,CONCAT(forename, ' ', surname) as driver_name
	  ,nationality
	  ,sum(case when grid = 1 then 1 else 0 end) as number_of_poles
FROM {{ ref('stg_raw__drivers') }} drivers
left join
{{ ref('stg_raw__results') }} results
on drivers.driver_id = results.driver_id
group by drivers.driver_id, nationality, forename, surname, grid
order by number_of_poles desc