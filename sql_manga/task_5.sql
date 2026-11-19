SELECT COUNT(num_manga) as nombre_total_de_mangas, ROUND(AVG(prix_base), 2) as prix_moyen, MAX(prix_base) as prix_max
FROM mangas;