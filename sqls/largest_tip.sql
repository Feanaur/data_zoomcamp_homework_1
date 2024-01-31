SELECT dropoff.zone AS dropoff_zone, MAX(t.tip_amount) AS largest_tip
FROM green_taxi_trips t
JOIN taxi_zones pickup ON t.pulocationid = pickup.locationid
JOIN taxi_zones dropoff ON t.dolocationid = dropoff.locationid
WHERE pickup.zone = 'Astoria'
GROUP BY dropoff_zone
ORDER BY largest_tip DESC
LIMIT 1;