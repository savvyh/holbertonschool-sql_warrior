SELECT u.nom_complet, COUNT(l.utilisateur_id) as nombre_locations
FROM utilisateurs u 
JOIN locations l on l.utilisateur_id = u.id
GROUP BY u.nom_complet;