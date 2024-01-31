SELECT DATE(lpep_pickup_datetime) AS pickup_day, MAX(trip_distance) AS longest_trip
FROM green_taxi_trips
GROUP BY pickup_day
ORDER BY longest_trip DESC
LIMIT 1;