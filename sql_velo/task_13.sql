SELECT v.code, COUNT(l.velo_id) as total_locations
FROM velos v
LEFT JOIN locations l on l.velo_id = v.id
GROUP BY v.code
ORDER BY total_locations DESC;