SELECT pickup.borough, SUM(t.total_amount) AS total_amount
FROM public.green_taxi_trips t
JOIN public.taxi_zones pickup ON t.pulocationid = pickup.locationid
WHERE lpep_pickup_datetime::date = '2019-09-18'
AND pickup.borough != 'Unknown'
GROUP BY pickup.borough
ORDER BY total_amount DESC
LIMIT 3;