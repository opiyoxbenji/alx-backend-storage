-- 
SELECT origin, COUNT(*) AS nb_fans
FROM (
	SELECT DISTINCT m.name, m.origin, f.user_id
	FROM metal_bands m
	JOIN fans f ON  m.name = f.band_name
) AS subquery
GROUP BY origin
ORDER BY nb_fans DESC;
