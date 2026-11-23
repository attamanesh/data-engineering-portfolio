--Query 1: JOIN of nation and region
SELECT n.n_name AS country, r.r_name AS region
FROM samples.tpch.nation n
JOIN samples.tpch.region r
  ON n.n_regionkey = r.r_regionkey;

-- Query 2: number of countries per region
-- I used INNER JOIN because every country has exactly one region,
-- and I only want rows that match in both tables.
SELECT COUNT(*) AS total, r.r_name AS region
FROM samples.tpch.nation AS n
INNER JOIN samples.tpch.region AS r
ON n.n_regionkey = r.r_regionkey
GROUP BY r.r_name
ORDER BY total DESC
LIMIT 10;
