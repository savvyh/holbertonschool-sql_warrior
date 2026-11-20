SELECT v.id as vehicule, COUNT(d.vehicule) as nb_deplacements
FROM vehicules v
JOIN deplacements d ON d.vehicule = v.id
GROUP BY vehicule
ORDER BY nb_deplacements DESC;