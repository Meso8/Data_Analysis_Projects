SELECT
  gender,
  COUNT(*) AS num_trips,
  ROUND(SUM(SAFE_CAST(tripduration AS INT64)) / 60.0, 2) AS total_minutes
FROM `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE birth_year > 2000 AND birth_year IS NOT NULL
GROUP BY gender
ORDER BY num_trips DESC;
