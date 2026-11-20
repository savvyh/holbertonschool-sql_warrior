SELECT tp.libelle, COUNT(v.type_voiture) as total
FROM types_vehicules tp
LEFT JOIN vehicules v ON v.type_voiture = tp.id
GROUP BY tp.libelle
ORDER BY total DESC;
