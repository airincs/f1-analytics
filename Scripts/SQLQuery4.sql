--Get list of average position change
Select drivers.[driverid]
	  ,[forename] + ' ' + [surname] as 'DriverName'
	  ,[nationality]
	  ,avg(cast([grid] as float) - cast([positionOrder] as float)) 'Average Position Change'
FROM Formula1.dbo.drivers drivers
left join
[Formula1].[dbo].[results] results
on drivers.driverId = results.driverId
group by drivers.driverId, nationality, forename, surname
order by [Average Position Change] desc



--Drivers most points
Select drivers.[driverid]
	  ,[forename] + ' ' + [surname] as 'DriverName'
	  ,[nationality]
	  ,Sum(cast([points] as float)) as 'Total Points'
FROM Formula1.dbo.drivers drivers
left join
[Formula1].[dbo].[results] results
on drivers.driverId = results.driverId
group by drivers.driverId, nationality, forename, surname
order by [Total Points] desc


--Get list of average grid start
Select drivers.[driverid]
	  ,[forename] + ' ' + [surname] as 'DriverName'
	  ,[nationality]
	  ,avg(cast([grid] as float)) as 'Average Grid Start'
FROM Formula1.dbo.drivers drivers
left join
[Formula1].[dbo].[results] results
on drivers.driverId = results.driverId
group by drivers.driverId, nationality, forename, surname
having avg(cast([grid] as float)) > 0
order by [Average Grid Start] asc


--Get list of best pole percentage
Select drivers.[driverid]
	  ,[forename] + ' ' + [surname] as 'DriverName'
	  ,[nationality]
	  ,SUM(CASE
		WHEN grid = 1 THEN 1 else 0
		END) as Poles
FROM Formula1.dbo.drivers drivers
left join
[Formula1].[dbo].[results] results
on drivers.driverId = results.driverId
where grid <> '0'
group by drivers.driverId, nationality, forename, surname, grid
order by Poles desc