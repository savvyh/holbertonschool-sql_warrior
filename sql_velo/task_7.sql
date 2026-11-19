SELECT l.id, u.nom_complet, v.code, l.date_debut, l.date_fin, p.montant
FROM locations l
JOIN utilisateurs u on u.id = l.utilisateur_id
JOIN velos v on v.id = l.velo_id
JOIN paiements p on p.location_id = l.id
WHERE l.id = 1;
