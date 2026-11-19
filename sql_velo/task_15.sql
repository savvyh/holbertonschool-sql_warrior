SELECT MONTH(l.date_debut) as mois, COUNT(l.id) as nombre_locations
FROM locations l
GROUP BY mois;