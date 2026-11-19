SELECT v.code, COUNT(l.velo_id) as nombre_locations
FROM velos v
JOIN locations l on l.velo_id = v.id
GROUP BY v.code;