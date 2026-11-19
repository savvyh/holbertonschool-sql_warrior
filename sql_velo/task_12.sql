SELECT u.nom_complet, ROUND(SUM(p.montant), 2) as total_depense
FROM utilisateurs u 
JOIN locations l on l.utilisateur_id = u.id
JOIN paiements p on p.location_id = l.id
GROUP BY u.nom_complet
HAVING ROUND(SUM(p.montant), 2) > 10;